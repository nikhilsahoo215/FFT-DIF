import numpy as np

# -----------------------------
# PARAMETERS
# -----------------------------
N = 64
Q = 15  # Q1.15

# -----------------------------
# GENERATE TWIDDLES
# -----------------------------
tw_re = []
tw_im = []

for k in range(N//2):
    angle = 2 * np.pi * k / N
    real = np.cos(angle)
    imag = -np.sin(angle)

    real_q = int(round(real * (2**Q)))
    imag_q = int(round(imag * (2**Q)))

    # Handle overflow edge
    if real_q == 32768: real_q = 32767
    if imag_q == 32768: imag_q = 32767

    tw_re.append(real_q)
    tw_im.append(imag_q)

# -----------------------------
# PRINT HEX (32-bit packed)
# -----------------------------
print("Twiddle ROM (.mem / .coe format):\n")
print("memory_initialization_radix=16;")
print("memory_initialization_vector=")
for i in range(N//2):
    val = ((tw_re[i] & 0xFFFF) << 16) | (tw_im[i] & 0xFFFF)
    if i != N//2-1:
        print(f"{val:08X},")
    else:
        print(f"{val:08X};")