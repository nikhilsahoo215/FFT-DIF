import numpy as np

N = 64
Q = 15

# same input
x = np.concatenate((np.arange(1, N//2+1), np.arange(N//2, 0, -1)))
x = x / N

# FFT
X = np.fft.fft(x)

# stage scaling
X = X / N

# convert to Q1.15
scale = 2**Q
real = np.round(np.real(X) * scale).astype(int)
imag = np.round(np.imag(X) * scale).astype(int)

print("Index | Real | Imag")
for i in range(N):
    print(f"{i:2d} | {real[i]:6d} | {imag[i]:6d}")