module twiddle_rom #(parameter DATA_WIDTH = 16)(
    input [1:0] tw_addr,
    output reg signed [DATA_WIDTH-1:0] tw_re,
    output reg signed [DATA_WIDTH-1:0] tw_im
);

always@(*)begin
    case(tw_addr)
    2'd0: begin
            tw_re = 16'h7FFF; // 1
            tw_im = 16'h0000; // 0
        end

    2'd1: begin
            tw_re = 16'h5A82; // 0.707
            tw_im = 16'hA57E; // -0.707
        end

    2'd2: begin
            tw_re = 16'h0000; // 0
            tw_im = 16'h8000; // -1
        end

    2'd3: begin
            tw_re = 16'hA57E; // -0.707
            tw_im = 16'hA57E; // -0.707
        end
    endcase
end


endmodule