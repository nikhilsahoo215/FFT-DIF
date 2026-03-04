module top_module #(parameter addr_width = 3,
                    parameter data_width = 32,
                    parameter N = 8)(
    input clk,rst,
    input add,
    output 
    );

reg [addr_width-1:0] addr_a, addr_b;
reg [data_width-1:0] din_a, din_b;
reg [data_width-1:0] dout_a, dout_b;
reg we_a,we_b;

reg [1:0] bf_index;
reg [2:0] distance;
reg [1:0] offset;
reg [1:0] group_number;
reg [3:0] group_size;
wire [1:0] stage;

always@(*)begin
    bf_index = bf_index + 1;
    distance = (N>>(stage+1));
    group_size = 2 * distance;
    group_number = bf_index / distance;
    offset = bf_index % distance;
end


always@(posedge clk)begin
    if(rst)begin
       addr_a <= 0;
       addr_b <= 0;
    end
    else begin 

    addr_a <= group_number*group_size + offset ;
    addr_b <= addr_b+distance;

    end
end

bram ram_read(clk, rst, we_a, addr_a, din_a, dout_a, we_b, addr_b, din_b, dout_b);

wire signed [15:0] real_a = dout_a[31:16];
wire signed [15:0] imag_a = dout_a[15:0];

wire signed [15:0] real_b = dout_b[31:16];
wire signed [15:0] imag_b = dout_b[15:0];

butterfly fly(clk,rst,real_a,imag_a,real_b,imag_b,Dreal_a,Dimag_a,Dreal_b,Dimag_b,done);

always@(posedge clk)begin
    if(done)begin
    din_a <= {Dreal_a,Dimag_a};
    din_b <= {Dreal_b,Dimag_b};
    we_a <= 1;
    we_b <= 1;
    end
    else begin
        we_a <= 0;
        we_b <= 0;
    end
end


endmodule
