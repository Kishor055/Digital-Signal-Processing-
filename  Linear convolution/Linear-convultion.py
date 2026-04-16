import numpy as np
import matplotlib.pyplot as plt

# Input sequences
x1 = list(map(float, input("Enter first sequence (space-separated): ").split()))
x2 = list(map(float, input("Enter second sequence (space-separated): ").split()))

x1 = np.array(x1)
x2 = np.array(x2)

# First sequence plot
n1 = np.arange(len(x1))
plt.subplot(3, 1, 1)
plt.stem(n1, x1)
plt.xlabel('n')
plt.ylabel('amplitude')
plt.title('First Sequence')

# Second sequence plot
n2 = np.arange(len(x2))
plt.subplot(3, 1, 2)
plt.stem(n2, x2)
plt.xlabel('n')
plt.ylabel('amplitude')
plt.title('Second Sequence')

# Linear convolution
y = np.convolve(x1, x2)
n3 = np.arange(len(y))

plt.subplot(3, 1, 3)
plt.stem(n3, y)
plt.xlabel('n')
plt.ylabel('amplitude')
plt.title('Linear Convolution')

plt.tight_layout()
plt.show()

# Save figure
plt.savefig("linear_convolution.bmp")

print("Convolution Output:", y)