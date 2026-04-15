import numpy as np
import matplotlib.pyplot as plt

# Input sequences
x = np.array([1, 2, 5, 7])   # input sequence
h = np.array([2, 6, 0, 5, 3])  # impulse sequence

# Plot input sequence
plt.subplot(2, 2, 1)
plt.stem(x, use_line_collection=True)
plt.xlabel('n')
plt.ylabel('x(n)')
plt.title('Input Sequence')

# Plot impulse sequence
plt.subplot(2, 2, 2)
plt.stem(h, use_line_collection=True)
plt.xlabel('n')
plt.ylabel('h(n)')
plt.title('Impulse Sequence')

# Cross-correlation
y = np.correlate(x, h, mode='full')

plt.subplot(2, 2, 3)
plt.stem(y, use_line_collection=True)
plt.xlabel('n')
plt.ylabel('y(n)')
plt.title('Cross Correlation Between Two Sequences')

# Auto-correlation
z = np.correlate(x, x, mode='full')

plt.subplot(2, 2, 4)
plt.stem(z, use_line_collection=True)
plt.xlabel('n')
plt.ylabel('z(n)')
plt.title('Auto Correlation of Input Sequence')

plt.tight_layout()
plt.show()
