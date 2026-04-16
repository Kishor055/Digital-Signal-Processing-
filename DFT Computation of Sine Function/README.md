# 📘 Experiment: DFT Computation of Sinc Function

---

## 🧪 Aim

To write a MATLAB program to compute the Discrete Fourier Transform (DFT) of a sinc function and analyze its time-domain and frequency-domain representations.

---

## 💻 Software Required

* MATLAB Software
* Personal Computer

---

## ⚙️ Procedure

1. Open MATLAB environment.
2. Create a new M-file.
3. Type the program for DFT computation.
4. Save the file with `.m` extension.
5. Run the program.
6. Observe the output in the figure window.
7. Analyze both time-domain and frequency-domain plots.

---

## 🧾 MATLAB Program

```matlab id="6c3w68"
clc;
clear all;
close all;

x = -pi:0.05:pi;
x1 = sinc(x);

X = fft(x1);
X_shift = fftshift(X);

subplot(2,1,1);
plot(x1);
xlabel('n');
ylabel('amplitude');
title('time domain');

subplot(2,1,2);
plot(abs(X_shift));
xlabel('k');
ylabel('Magnitude');
title('frequency domain');
```

---

## 📊 Output

The program generates two plots:

### 1. Time Domain Plot

* Displays the sinc function
* Shows oscillatory behavior with a peak at the center

### 2. Frequency Domain Plot

* Displays magnitude of DFT
* Shows concentration of energy around zero frequency

---

## 🧠 Theory

* **Sinc Function:**
 ![alt text](image.png)

* **DFT (Discrete Fourier Transform):**
  Transforms a discrete signal from time domain to frequency domain.

* `fft()` → Computes DFT

* `fftshift()` → Centers zero frequency component

### Key Concept:

* A sinc function in time domain corresponds to a rectangular function in frequency domain.

---

## 🔍 Applications

* Signal analysis
* Filter design
* Sampling theory
* Communication systems

---

## ⚠️ Notes

* `fftshift()` is important for proper frequency visualization.
* Sampling interval affects resolution of frequency spectrum.
* Ensure proper range of `x` for accurate sinc representation.

---

## ✅ Result

The DFT of the sinc function was successfully computed and its time-domain and frequency-domain characteristics were analyzed.

---

## 📎 Author

**Student Name:** Kishor Vitthal Kakde


---

