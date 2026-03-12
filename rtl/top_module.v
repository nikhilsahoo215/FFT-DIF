module top_module #(parameter ADDR_WIDTH = 4,
                    parameter DATA_WIDTH = 32,
                    parameter N = 8)(
    input clk,rst,
    output reg signed [DATA_WIDTH-1:0]din_a,
    output reg signed [DATA_WIDTH-1:0]din_b,
    output done 
    );

parameter READ = 2'b00,
          COMPUTE = 2'b01,
          WRITE = 2'b10;

reg  [ADDR_WIDTH-1:0] addr_a, addr_b;
//reg  [DATA_WIDTH-1:0] din_a, din_b;
wire [DATA_WIDTH-1:0] dout_a, dout_b;
reg we_a,we_b;

reg [1:0] bf_index;
reg [2:0] distance;
reg [1:0] offset;
reg [1:0] group_number;
reg [3:0] group_size;
reg [1:0] stage;
reg [1:0] status;
reg [1:0] d;
reg [1:0] count;
// wire rcvd;
reg FFT_done;

wire signed [15:0] Dreal_a;
wire signed [15:0] Dimag_a;

wire signed [15:0] Dreal_b;
wire signed [15:0] Dimag_b;


always@(*)begin
    distance = (N >> (stage+1));
    d = 2 - stage;
    group_size = 2 * distance;
    group_number = bf_index >> d;
    offset =  bf_index & (distance - 1);    
end


always@(posedge clk)begin
    if(rst)begin
       addr_a <= 0;
       addr_b <= 0;
    end
    else if(status == READ)begin 

    addr_a <= group_number * group_size + offset ;
    addr_b <= group_number * group_size + offset + distance;

    end
end


always@(posedge clk)begin
    if(rst)begin
        status <= 2'b00;
        FFT_done <= 0;
        bf_index <= 0;
        stage <= 0;
        count <= 0;
    end
    else begin
        case(status)
        READ: begin
            we_a <= 0;
            we_b <= 0;
            status <= COMPUTE;
        end
        COMPUTE: begin
            count <= count+1;
            if(count == 2)begin
                status <= WRITE;
                count <= 0;
            end
        end
        WRITE:begin
            if(done)begin
                we_a <= 1;
                we_b <= 1;
                din_a <= {Dreal_a,Dimag_a};
                din_b <= {Dreal_b,Dimag_b};
                if(bf_index == 3)begin
                    bf_index <= 0;
                    if (stage == 2) FFT_done <= 1;
                    else stage <= stage + 1;
                end
                else bf_index <= bf_index + 1;
                status <= READ;
            end
            else begin
                we_a <= 0;
                we_b <= 0;
            end
        end
        default: status <= READ;
        endcase
    end
end

blk_mem_gen_0 input_bram (
    .clka(clk),
    .ena(1'b1),
    .wea(we_a),
    .addra(addr_a),
    .dina(din_a),
    .douta(dout_a),

    .clkb(clk),
    .enb(1'b1),
    .web(we_b),
    .addrb(addr_b),
    .dinb(din_b),
    .doutb(dout_b)
);

wire signed [15:0] real_a = dout_a[31:16];
wire signed [15:0] imag_a = dout_a[15:0];

wire signed [15:0] real_b = dout_b[31:16];
wire signed [15:0] imag_b = dout_b[15:0];



butterfly fly(clk,rst,status,bf_index,stage,distance,real_a,imag_a,real_b,imag_b,Dreal_a,Dimag_a,Dreal_b,Dimag_b,done);




endmodule
