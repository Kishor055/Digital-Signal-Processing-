# 📡 Digital Signal Processing – MATLAB Programs

## 📌 Overview

This repository contains MATLAB implementations of fundamental **Discrete-Time Signal Generation** techniques. It is designed as part of a Digital Signal Processing (DSP) laboratory to demonstrate the creation and visualization of basic signals used in signal analysis and system design.

---

## 🎯 Aim

To write a MATLAB program to generate discrete-time signals such as:

* Unit Impulse Signal
* Unit Step Signal
* Unit Ramp Signal
* Exponential Signal
* Sawtooth Signal

---

## 🛠️ Software Requirements

* MATLAB (Version 2019b or later)
* PC / Laptop with basic computational capability

---

## ⚙️ Procedure

1. Open MATLAB
2. Create a new script file (M-file)
3. Enter the program code
4. Save the file in the current working directory
5. Run the program
6. Observe output in:

   * Command Window
   * Figure Window (Graphical Output)

---

## 💻 Program Description

The MATLAB script generates and plots the following discrete-time signals:

### 1. Unit Impulse Signal

* Defined as δ(n), where value is 1 at n = 0 and 0 elsewhere.

### 2. Unit Step Signal

* Defined as u(n), where value is 1 for n ≥ 0 and 0 otherwise.

### 3. Unit Ramp Signal

* Defined as r(n) = n for n ≥ 0.

### 4. Exponential Signal

* Generated using user-defined parameters:

  * Length of sequence
  * Exponential coefficient (a)

### 5. Sawtooth Signal

* Periodic signal generated using MATLAB’s `sawtooth()` function.

---

## 📊 Output

The program uses MATLAB’s `subplot()` function to display all signals in a single figure window:

* Each subplot represents a different signal
* Signals are plotted using `stem()` for discrete visualization

---

## 📁 File Structure

```
Digital-Signal-Processing/
│── discrete_signals.m
│── README.md
```

---

## 🚀 Applications

These basic signals are widely used in:

* Signal analysis and system design
* Communication systems
* Audio and speech processing
* Control systems
* Image and video processing

---

## 📚 Learning Outcomes

* Understanding of discrete-time signal representation
* Hands-on experience with MATLAB plotting functions
* Visualization of fundamental DSP signals
* Foundation for advanced topics like filtering and transforms

---

## 🔮 Future Improvements

* Add GUI-based signal visualization
* Extend to Fourier Transform (DFT/FFT)
* Include real-world signal processing examples (audio, ECG, etc.)
* Python implementation using NumPy & Matplotlib

---


## OUTPUT:-

(image.png)


## 👨‍💻 Author

**Kishor**
Electronics/Engineering Student
GitHub: https://github.com/Kishor055

---

## ⭐ Support

If you find this repository helpful, consider giving it a ⭐ on GitHub!

