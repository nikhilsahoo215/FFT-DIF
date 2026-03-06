module butterfly #(parameter DATA_WIDTH = 16)(
    input clk, rst,
    input [1:0] status,bf_index, stage,
    input [2:0] distance,

    input signed [DATA_WIDTH-1:0] real_a,
    input signed [DATA_WIDTH-1:0] imag_a,
    input signed [DATA_WIDTH-1:0] real_b,
    input signed [DATA_WIDTH-1:0] imag_b,

    output reg signed [DATA_WIDTH-1:0] Dreal_a,
    output reg signed [DATA_WIDTH-1:0] Dimag_a,
    output reg signed [DATA_WIDTH-1:0] Dreal_b,
    output reg signed [DATA_WIDTH-1:0] Dimag_b,
    output reg done
);

parameter WRITE = 2'b10;
wire [1:0] offset;
wire [1:0] tw_addr;

assign offset  = bf_index & (distance - 1);
assign tw_addr = offset << stage;

wire signed [DATA_WIDTH-1:0] tw_re;
wire signed [DATA_WIDTH-1:0] tw_im;

twiddle_rom tw(
    .tw_addr(tw_addr),
    .tw_re(tw_re),
    .tw_im(tw_im)
);

wire signed [DATA_WIDTH:0] sum_real;
wire signed [DATA_WIDTH:0] sum_imag;

wire signed [DATA_WIDTH-1:0] diff_real;
wire signed [DATA_WIDTH-1:0] diff_imag;

assign sum_real  = real_a + real_b;
assign sum_imag  = imag_a + imag_b;
assign diff_real = real_a - real_b;
assign diff_imag = imag_a - imag_b;

wire signed [2*DATA_WIDTH-1:0] mult1,mult2,mult3,mult4;

assign mult1 = diff_real * tw_re;
assign mult2 = diff_imag * tw_im;
assign mult3 = diff_real * tw_im;
assign mult4 = diff_imag * tw_re;

always @(posedge clk) begin
    if (rst) begin
        done <= 0;
    end
    else if(status == WRITE)begin
        Dreal_a <= sum_real >>> 1;
        Dimag_a <= sum_imag >>> 1;

        Dreal_b <= (mult1 - mult2) >>> 15;
        Dimag_b <= (mult3 + mult4) >>> 15;

        done <= 1'b1;
    end
    else done <= 1'b0;
end

endmodule