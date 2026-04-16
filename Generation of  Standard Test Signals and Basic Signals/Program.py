import numpy as np
import matplotlib.pyplot as plt
from scipy import signal

# Clear previous plots
plt.close('all')

# Parameters
fs = 4000
ts = 1 / fs
t = np.arange(0, 1 + ts, ts)
f = 4

plt.figure(figsize=(12, 10))

# Sine wave
x = np.sin(2 * np.pi * f * t)
plt.subplot(4, 2, 1)
plt.plot(t, x)
plt.xlabel('time')
plt.ylabel('amplitude')
plt.title('sine wave')

# Cosine wave
y = np.cos(2 * np.pi * f * t)
plt.subplot(4, 2, 2)
plt.plot(t, y)
plt.xlabel('time')
plt.ylabel('amplitude')
plt.title('cosine wave')

# Unit impulse function
n = np.arange(-10, 11)
Xn = (n == 0).astype(int)
plt.subplot(4, 2, 3)
plt.stem(n, Xn)
plt.xlim([-11, 11])
plt.ylim([-0.5, 1.5])
plt.xlabel('samples')
plt.ylabel('amplitude')
plt.title('unit impulse function')

# Unit step function
Xn = (n >= 0).astype(int)
plt.subplot(4, 2, 4)
plt.stem(n, Xn)
plt.xlim([-11, 11])
plt.ylim([-0.5, 1.5])
plt.xlabel('samples')
plt.ylabel('amplitude')
plt.title('unit step function')

# Unit ramp function
Xn = np.where(n >= 0, n, 0)
plt.subplot(4, 2, 5)
plt.stem(n, Xn)
plt.xlim([-11, 11])
plt.ylim([-1, 11])
plt.xlabel('samples')
plt.ylabel('amplitude')
plt.title('unit ramp function')

# Exponential signal
n2 = int(input("Enter the length of the exponential sequence: "))
t2 = np.arange(0, n2 + 1)
a = float(input("Enter the value of a: "))
y2 = np.exp(a * t2)

plt.subplot(4, 2, 6)
plt.stem(t2, y2)
plt.xlabel('time period')
plt.ylabel('amplitude')
plt.title('exponential sequence')

# Sawtooth signal
n = np.arange(0, 11)
Xn = signal.sawtooth(np.pi * n / 4)
plt.subplot(4, 2, 7)
plt.stem(n, Xn)
plt.xlim([-0.5, 11])
plt.ylim([-1.5, 1.5])
plt.xlabel('time period')
plt.ylabel('amplitude')
plt.title('sawtooth sequence')

# Adjust layout
plt.tight_layout()
plt.show()