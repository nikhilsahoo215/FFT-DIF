`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2026 22:08:22
// Design Name: 
// Module Name: tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module tb;

reg clk;
reg rst;
wire signed [31:0] din_a, din_b;
wire done;
wire signed [15:0] Dreal_a = din_a[31:16];
wire signed [15:0] Dimag_a = din_a[15:0];

wire signed [15:0] Dreal_b = din_b[31:16];
wire signed [15:0] Dimag_b = din_b[15:0];


top_module uut (
    .clk(clk),
    .rst(rst),
    .din_a(din_a),
    .din_b(din_b),
    .done(done)
);
integer file;

initial begin
    file = $fopen("fft_output.txt","w");
end

initial begin
rst = 1;
#20
rst = 0;
end 

always @(posedge clk) begin
    if(done) begin
        $fwrite(file,"%d %d %d %d\n",
                Dreal_a, Dimag_a,
                Dreal_b, Dimag_b);
    end
end

initial begin
    #1000
    $fclose(file);
end

initial begin
clk = 0;
forever #5 clk = ~clk;   // 100 MHz clock
end



endmodule
