# 🔄 Inverse Fast Fourier Transform (IFFT) using MATLAB

## 📌 Overview

This project demonstrates the implementation of the **Inverse Fast Fourier Transform (IFFT)** using MATLAB. IFFT is used to convert a signal from the **frequency domain back to the time domain**, reconstructing the original signal.

---

## 🎯 Aim

To write a MATLAB program:

* To compute the **FFT** of a given sequence
* To compute the **IFFT** and reconstruct the original signal

---

## 🛠️ Software Requirements

* MATLAB (Version 2019b or later)
* PC / Laptop

---

## ⚙️ Procedure

1. Open MATLAB
2. Create a new M-file
3. Enter the program code
4. Save in the working directory
5. Run the program
6. Observe output in:

   * Command Window
   * Figure Window (optional plots)

---

## 📚 Theory

### 🔹 Fast Fourier Transform (FFT)

Transforms a signal from:

* Time Domain → Frequency Domain

---

### 🔹 Inverse Fast Fourier Transform (IFFT)

Transforms a signal from:

* Frequency Domain → Time Domain

Mathematically:

[
x(n) = \frac{1}{N} \sum_{k=0}^{N-1} X(k) e^{j 2\pi kn/N}
]

---

## 💻 Program Description

The MATLAB program:

* Accepts input sequence
* Computes FFT using `fft()`
* Computes IFFT using `ifft()`
* Displays both results in command window

---

## 📥 Input

```text id="ifftin1"
n = 8  
x = [1 2 3 4 5 6 7 8]
```

---

## 📤 Output

### FFT Result:

```text id="ifftout1"
36.0000 + 0.0000i  
-4.0000 + 9.6569i  
-4.0000 + 4.0000i  
-4.0000 + 1.6569i  
-4.0000 + 0.0000i  
-4.0000 - 1.6569i  
-4.0000 - 4.0000i  
-4.0000 - 9.6569i
```

---

### IFFT Result (Reconstructed Signal):

```text id="ifftout2"
[1 2 3 4 5 6 7 8]
```

---

## 📊 Observations

* FFT converts the input sequence into frequency components
* IFFT perfectly reconstructs the original sequence
* Minor imaginary values (if any) are due to numerical precision

---

## 📁 File Structure

```id="k28dj3"
DSP-IFFT/
│── ifft_program.m
│── README.md
```

---

## 📈 Key Concepts

* Frequency domain representation
* Signal reconstruction
* Numerical accuracy
* FFT/IFFT pair relationship

---

## 🚀 Applications

* Signal reconstruction
* Audio processing
* Image compression
* Communication systems
* OFDM systems

---

## 🔮 Future Enhancements

* Plot time vs frequency domain signals
* Add magnitude and phase visualization
* Compare manual IFFT vs built-in function
* Combine with FFT analysis module

---

## 👨‍💻 Author

**Kishor**
Engineering Student
GitHub: https://github.com/Kishor055

---

## ⭐ Support

If you find this useful, consider giving the repository a ⭐!
