# 📡 N-Point DIT-FFT – MATLAB Program

## 📌 Overview

This project implements the **Decimation-In-Time (DIT) Fast Fourier Transform (FFT)** algorithm using MATLAB. The program computes the **N-point FFT** of a user-defined complex signal and visualizes both **time-domain sequences** and **frequency-domain outputs**.

## 🎯 Aim

To write a MATLAB program that:

* Accepts an N-point complex input sequence (real and imaginary parts)
* Computes the **DIT-FFT**
* Plots:

  * Input real and imaginary sequences
  * Output real and imaginary sequences
  * Magnitude and phase spectra

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

   * **Command Window** – displays real and imaginary parts of FFT
   * **Figure Window** – plots input and output sequences

---

## 💻 Program Description

The MATLAB script performs the following tasks:

1. **Input Sequence Entry**

   * Users enter the **length of the sequence N**
   * Enter the **real and imaginary parts** of each sample

2. **DIT-FFT Computation**

   * Calls the function `DITFFT()`
   * Computes FFT recursively using the **Decimation-In-Time algorithm**

3. **Visualization**

   * Input sequences plotted using `stem()`
   * Output FFT sequences plotted (real and imaginary)
   * Magnitude and phase spectra can also be visualized

---

## 📊 Output

* **Input Real Sequence** – discrete-time plot of real part
* **Input Imaginary Sequence** – discrete-time plot of imaginary part
* **Output Real Sequence** – frequency-domain plot of real part
* **Output Imaginary Sequence** – frequency-domain plot of imaginary part

Example output in Command Window:

```
Output Real Part:
15.0000 0.7071 2.0000 0.1213 -3.0000 -0.7071 -2.0000 -4.1213
Output Imaginary Part:
12.0000 5.5355 1.0000 0.7071 0 -1.5355 -1.0000 -0.7071
Elapsed time: 23.5652 seconds
```

*Figures in Figure Window show stem plots of the sequences.*

---

## 📁 File Structure

```
DIT-FFT/
│── DITFFT.m            % Function implementing DIT-FFT
│── DITFFT_main.m       % Main script file
│── README.md           % Project documentation
```

---

## 🚀 Applications

* Frequency analysis of discrete-time signals
* Audio and speech processing
* Communication systems
* Control and signal monitoring systems
* Foundation for advanced DSP techniques

---

## 📚 Learning Outcomes

* Understand **FFT computation** using Decimation-In-Time
* Learn **recursive algorithms** in MATLAB
* Hands-on experience with **complex sequence input and visualization**
* Analyze signals in both **time and frequency domains**

---

## 🔮 Future Improvements

* Add **GUI-based input and visualization**
* Include **magnitude and phase spectrum plots** automatically
* Extend to **inverse FFT (IDFT)** computation
* Implement **Python version using NumPy & Matplotlib**

---

## 👨‍💻 Author

**Kishor Kakde**
Electronics/Engineering Student
GitHub: [https://github.com/Kishor055](https://github.com/Kishor055)

---

## ⭐ Support

If you find this repository helpful, consider giving it a ⭐ on GitHub!

---

I can also **add a nice image section** like your example, showing input and output plots with `subplot()` for Figure Window visualization to make it fully ready for GitHub.

Do you want me to do that next?
