module top_module #(parameter addr_width = 3,
                    parameter data_width = 32,
                    parameter N = 8)(
    input clk,rst,
    input add 
    );

parameter READ = 2'b00,
          COMPUTE = 2'b01,
          WRITE = 2'b10;

reg [addr_width-1:0] addr_a, addr_b;
reg [data_width-1:0] din_a, din_b;
reg [data_width-1:0] dout_a, dout_b;
reg we_a,we_b;

reg [1:0] bf_index;
reg [2:0] distance;
reg [1:0] offset;
reg [1:0] group_number;
reg [3:0] group_size;
reg [1:0] stage;
reg [1:0] status;
wire done;
wire rcvd;

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
       bf_index <= 0;
    end
    else if(status == READ)begin 

    addr_a <= group_number * group_size + offset ;
    addr_b <= addr_a + distance;

    end
end

always@(posedge clk)begin
    if(rst)begin
        status = 2'b00;
    end
    case(status)
    2'b00: begin
        we_a <= 0;
        we_b <= 0;
        status <= 2'b01;
        end
    2'b01: begin
        if(rcvd)begin
            status <= 2'b10;
        end
    end
    2'b10:begin
        if(done)begin
            we_a <= 1;
            we_b <= 1;
            din_a <= {Dreal_a,Dimag_a};
            din_b <= {Dreal_b,Dimag_b};
            bf_index <= bf_index + 1;
            status <= 2'b00;
        end
    end
    endcase
end

bram ram_read(clk, rst, we_a, addr_a, din_a, dout_a, we_b, addr_b, din_b, dout_b);

wire signed [15:0] real_a = dout_a[31:16];
wire signed [15:0] imag_a = dout_a[15:0];

wire signed [15:0] real_b = dout_b[31:16];
wire signed [15:0] imag_b = dout_b[15:0];

butterfly fly(clk,rst,real_a,imag_a,real_b,imag_b,Dreal_a,Dimag_a,Dreal_b,Dimag_b,done);

wire signed [15:0] Dreal_a;
wire signed [15:0] Dimag_a;

wire signed [15:0] Dreal_b;
wire signed [15:0] Dimag_b;


endmodule
