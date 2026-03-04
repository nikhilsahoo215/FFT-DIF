module butterfly(
    input clk, rst,
    input signed [15:0] real_a,
    input signed [15:0] imag_a,
    input signed [15:0] real_b,
    input signed [15:0] imag_b,
    output reg signed [15:0] Dreal_a,
    output reg signed [15:0] Dimag_a,
    output reg signed [15:0] Dreal_b,
    output reg signed [15:0] Dimag_b,
    output reg done
 );

always@(posedge clk)begin
    

end
endmodule