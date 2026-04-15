import numpy as np
import matplotlib.pyplot as plt
from scipy.signal import buttord, butter, freqz

print('Enter the IIR filter design specifications')

rp = float(input('Enter the passband ripple (dB): '))
rs = float(input('Enter the stopband ripple (dB): '))
wp = float(input('Enter the passband frequency (Hz): '))
ws = float(input('Enter the stopband frequency (Hz): '))
fs = float(input('Enter the sampling frequency (Hz): '))

# Normalize frequencies (Nyquist = fs/2)
w1 = wp / (fs / 2)
w2 = ws / (fs / 2)

# Find filter order
n, wn = buttord(w1, w2, rp, rs)

c = int(input('Enter choice filter 1.LPF 2.HPF: '))

if c == 1:
    print('Frequency response of IIR LPF:')
    b, a = butter(n, wn, btype='low')
else:
    print('Frequency response of IIR HPF:')
    b, a = butter(n, wn, btype='high')

# Frequency response
w, h = freqz(b, a)

# Magnitude (dB) and phase
m = 20 * np.log10(np.abs(h))
an = np.angle(h)

# Plotting
plt.figure()

plt.subplot(2, 1, 1)
plt.plot(w / np.pi, m)
plt.title('Magnitude Response of IIR Filter')
plt.xlabel('Normalized Frequency')
plt.ylabel('Gain (dB)')
plt.grid(True)

plt.subplot(2, 1, 2)
plt.plot(w / np.pi, an)
plt.title('Phase Response of IIR Filter')
plt.xlabel('Normalized Frequency')
plt.ylabel('Phase (radians)')
plt.grid(True)

plt.tight_layout()
plt.show()
