# FFT-DIF
# 64-Point DIF FFT in Verilog

This project implements an iterative radix-2 DIF FFT.

Modules:
- top_module.v : FFT controller
- butterfly.v : complex butterfly unit
- twiddle_rom.v : twiddle factor ROM
- bram.v : dual-port memory
- tb.v : testbench

This project is parameterized and it uses BRAM for data and Twiddle values.
So, this can perform as N-point FFT-DIF.
It uses stage-wise scaling to avoid overflow.

Future work:
- FPGA implementation

This module is verified and all the output values are matched with expected values.
