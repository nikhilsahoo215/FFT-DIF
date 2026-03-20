import numpy as np

N = 64

# Example input (symmetric ramp)
x = np.concatenate((np.arange(1, N//2+1), np.arange(N//2, 0, -1)))

# Normalize (like your design)
x = x / N

# Convert to Q1.15
scale = 2**15
x_q = np.round(x * scale).astype(int)

# -----------------------------
# GENERATE .coe
# -----------------------------
print("memory_initialization_radix=16;")
print("memory_initialization_vector=")

for i in range(N):
    val = ((x_q[i] & 0xFFFF) << 16)  # imag = 0
    if i != N-1:
        print(f"{val:08X},")
    else:
        print(f"{val:08X};")