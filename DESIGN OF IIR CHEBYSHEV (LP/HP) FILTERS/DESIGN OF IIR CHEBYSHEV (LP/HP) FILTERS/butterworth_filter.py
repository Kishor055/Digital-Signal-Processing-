import numpy as np
import matplotlib.pyplot as plt
from scipy.signal import buttord, butter, freqz

print('Enter the IIR filter design specifications:')

# Filter specifications
rp = float(input('Enter the passband ripple (dB): '))
rs = float(input('Enter the stopband ripple (dB): '))
wp = float(input('Enter the passband frequency (Hz): '))
ws = float(input('Enter the stopband frequency (Hz): '))
fs = float(input('Enter the sampling frequency (Hz): '))

# Normalize frequencies with respect to Nyquist frequency
w1 = 2 * wp / fs   # Normalized passband
w2 = 2 * ws / fs   # Normalized stopband

# Calculate filter order and cutoff frequency
n, wn = buttord(w1, w2, rp, rs)

# Choose filter type
c = int(input('Enter choice of filter: 1.LPF 2.HPF: '))

if c == 1:
    print('Frequency response of IIR LPF:')
    b, a = butter(n, wn, btype='low')
elif c == 2:
    print('Frequency response of IIR HPF:')
    b, a = butter(n, wn, btype='high')
else:
    raise ValueError('Invalid choice! Enter 1 for LPF or 2 for HPF.')

# Frequency response computation (same as MATLAB: w = 0:0.01:pi)
w = np.arange(0, np.pi, 0.01)
w, h = freqz(b, a, worN=w)

# Magnitude (dB) and phase
m = 20 * np.log10(np.abs(h))
an = np.angle(h)

# Plot magnitude and phase response
plt.figure()

plt.subplot(2, 1, 1)
plt.plot(w / np.pi, m, linewidth=1.5)
plt.title('Magnitude Response of IIR Butterworth Filter')
plt.xlabel('Normalized Frequency (×π rad/sample)')
plt.ylabel('Gain (dB)')
plt.grid(True)

plt.subplot(2, 1, 2)
plt.plot(w / np.pi, an, linewidth=1.5)
plt.title('Phase Response of IIR Butterworth Filter')
plt.xlabel('Normalized Frequency (×π rad/sample)')
plt.ylabel('Phase (radians)')
plt.grid(True)

plt.tight_layout()
plt.show()
