# FFT-DIF
# 8-Point DIF FFT in Verilog

This project implements an iterative radix-2 DIF FFT.

Modules:
- top_module.v : FFT controller
- butterfly.v : complex butterfly unit
- twiddle_rom.v : twiddle factor ROM
- bram.v : dual-port memory
- tb.v : testbench

Future work:
- scale to 64-point FFT
- pipeline architecture
- FPGA implementation

This module is verified and all the output values are matched with expected values.
