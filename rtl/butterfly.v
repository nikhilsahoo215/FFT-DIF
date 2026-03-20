module butterfly #(parameter N = 16,
                   parameter DATA_WIDTH = 16)(
    input clk, rst,
    input [1:0] status,
    input [$clog2(N)-1:0] distance,stage,
    input [$clog2(N/2)-1:0] bf_index, 

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

localparam WRITE = 2'b10;
wire [$clog2(N/2)-1:0] offset;
wire [$clog2(N/2)-1:0] tw_addr;

assign offset  = bf_index & (distance - 1);
assign tw_addr = offset << stage;

wire signed [DATA_WIDTH-1:0] tw_re;
wire signed [DATA_WIDTH-1:0] tw_im;
wire signed [2*DATA_WIDTH-1:0] tw_data;

reg signed [15:0] real_a_d, imag_a_d;
reg signed [15:0] real_b_d, imag_b_d;

always @(posedge clk) begin
    real_a_d <= real_a;
    imag_a_d <= imag_a;
    real_b_d <= real_b;
    imag_b_d <= imag_b;
end

blk_mem_gen_1 tw_rom (
    .clka(clk),
    .addra(tw_addr),
    .douta(tw_data)
);

assign tw_re = tw_data[31:16];
assign tw_im = tw_data[15:0];

wire signed [DATA_WIDTH:0] sum_real;
wire signed [DATA_WIDTH:0] sum_imag;

wire signed [DATA_WIDTH-1:0] diff_real;
wire signed [DATA_WIDTH-1:0] diff_imag;

assign sum_real  = real_a_d + real_b_d;
assign sum_imag  = imag_a_d + imag_b_d;
assign diff_real = real_a_d - real_b_d;
assign diff_imag = imag_a_d - imag_b_d;

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

        Dreal_b <= (mult1 - mult2) >>> 16; // scaling by 2 at each stage
        Dimag_b <= (mult3 + mult4) >>> 16;

        done <= 1'b1;
    end
    else done <= 1'b0;
end

endmodule