import numpy as np
import matplotlib.pyplot as plt
from scipy import signal

# Input numerator and denominator
num = list(map(float, input("Enter numerator coefficients (space-separated): ").split()))
den = list(map(float, input("Enter denominator coefficients (space-separated): ").split()))

# Create system
system = signal.TransferFunction(num, den)

# Get zeros and poles
zeros, poles = signal.tf2zpk(num, den)

# Plot
plt.figure()

# Plot zeros (o)
plt.scatter(np.real(zeros), np.imag(zeros), marker='o', label='Zeros')

# Plot poles (x)
plt.scatter(np.real(poles), np.imag(poles), marker='x', label='Poles')

plt.axhline(0)
plt.axvline(0)
plt.grid()
plt.xlabel('Real')
plt.ylabel('Imaginary')
plt.title('Pole-Zero Plot')
plt.legend()

plt.show()

# Print values
print("Zeros of the system:", zeros)
print("Poles of the system:", poles)