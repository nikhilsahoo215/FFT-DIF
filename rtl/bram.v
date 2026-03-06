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

reg [DATA_WIDTH-1:0]mem[0:(1<<ADDR_WIDTH)-1];


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
