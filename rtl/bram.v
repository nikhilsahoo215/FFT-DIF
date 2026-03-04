module bram  #(parameter addr_width = 3
               parameter data_width =32 )
    (input clk,rst,
    
    input we_a,
    input [addr_width-1:0]addr_a,
    input signed [data_width-1:0]din_a,
    output reg signed [data_width-1:0]dout_a,
    
    input we_b,
    input [addr_width-1:0]addr_b,
    input signed [data_width-1:0]din_b,
    output reg signed [data_width-1:0]dout_b
    );

reg [data_width-1:0]mem[0:addr_width-1];


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
