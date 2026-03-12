module bram  #(parameter ADDR_WIDTH = 3,
               parameter DATA_WIDTH =32 )
    (input clk,rst,
    
    input we_a,
    input [ADDR_WIDTH-1:0]addr_a,
    input signed [DATA_WIDTH-1:0]din_a,
    output reg signed [DATA_WIDTH-1:0]dout_a,
    
    input we_b,
    input [ADDR_WIDTH-1:0]addr_b,
    input signed [DATA_WIDTH-1:0]din_b,
    output reg signed [DATA_WIDTH-1:0]dout_b
    );

reg signed [DATA_WIDTH-1:0]mem[0:(1<<ADDR_WIDTH)-1];

initial begin

mem[0] = 32'h1000_0000;
mem[1] = 32'h2000_0000;
mem[2] = 32'h3000_0000;
mem[3] = 32'h4000_0000;
mem[4] = 32'h4000_0000;
mem[5] = 32'h3000_0000;
mem[6] = 32'h2000_0000;
mem[7] = 32'h1000_0000;

end


always@(posedge clk)begin
    if(we_a)
    mem[addr_a] <= din_a;
    // else
    dout_a <= mem[addr_a];

    if(we_b)
    mem[addr_b] <= din_b;
    // else
    dout_b <= mem[addr_b];   
end


endmodule
