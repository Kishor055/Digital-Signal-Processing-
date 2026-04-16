import numpy as np
import matplotlib.pyplot as plt

# Clear previous plots
plt.close('all')

# Define range
x = np.arange(-np.pi, np.pi, 0.05)

# sinc function (numpy uses normalized sinc: sin(pi x)/(pi x))
x1 = np.sinc(x / np.pi)   # to match MATLAB sinc behavior

# FFT computation
X = np.fft.fft(x1)
X_shift = np.fft.fftshift(X)

# Plotting
plt.figure(figsize=(8, 6))

# Time domain
plt.subplot(2, 1, 1)
plt.plot(x1)
plt.xlabel('n')
plt.ylabel('amplitude')
plt.title('time domain')

# Frequency domain
plt.subplot(2, 1, 2)
plt.plot(np.abs(X_shift))
plt.xlabel('k')
plt.ylabel('Magnitude')
plt.title('frequency domain')

plt.tight_layout()
plt.show()

# Save figure as BMP
plt.savefig("dft_sinc.bmp")