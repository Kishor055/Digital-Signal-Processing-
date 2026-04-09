# 📡 IIR Butterworth Filter Design using MATLAB

## 📌 Overview

This project demonstrates the design and implementation of **IIR Butterworth Filters** (Low-Pass and High-Pass) using MATLAB. Butterworth filters are widely used in Digital Signal Processing (DSP) due to their **maximally flat frequency response** in the passband.

---

## 🎯 Aim

To write MATLAB programs:

* To design **Low-Pass (LPF)** and **High-Pass (HPF)** IIR Butterworth filters
* To visualize **magnitude** and **phase response** of the filters
* To analyze filter performance for given passband and stopband specifications

---

## 🛠️ Software Requirements

* MATLAB (Version 2019b or later)  
* PC / Laptop

---

## ⚙️ Procedure

1. Open MATLAB  
2. Create a new script file (M-file)  
3. Enter the MATLAB program for IIR Butterworth filter design  
4. Save the file in the working directory  
5. Run the program  
6. Observe outputs in:

   * Command Window  
   * Figure Window (magnitude & phase plots)

---

## 💻 Program Description

### 🔹 Filter Design Steps

1. Input specifications: passband frequency, stopband frequency, passband ripple, stopband attenuation, and sampling frequency  
2. Normalize the frequencies with respect to Nyquist frequency  
3. Compute filter **order** and **cutoff frequency** using `buttord()`  
4. Design the filter using `butter()` function (choose 'low' or 'high')  
5. Compute **frequency response** using `freqz()`  
6. Plot **magnitude** and **phase responses**

---

## 📊 Output Example

### Input:

* Passband Ripple: 2 dB  
* Stopband Ripple: 20 dB  
* Passband Frequency: 1000 Hz  
* Stopband Frequency: 2000 Hz  
* Sampling Frequency: 5000 Hz  
* Filter Type: Low-Pass

### Magnitude Response:

![Magnitude Response]<img width="577" height="427" alt="image" src="https://github.com/user-attachments/assets/97c55a1d-95e3-48ee-b6f3-3ab604ec8f6d" />


### Phase Response:

![Phase Response]<img width="640" height="462" alt="image" src="https://github.com/user-attachments/assets/4859a263-3d58-4cf8-9768-942e95d224c2" />


---

## 📈 Key Observations

* Low-pass filters allow frequencies below cutoff and attenuate higher frequencies  
* High-pass filters allow frequencies above cutoff and attenuate lower frequencies  
* Butterworth filters have **smooth passband response** without ripples  
* Filter order affects the **sharpness of transition** between passband and stopband

---

## 📁 File Structure

DSP-Butterworth-Filter/
│── butterworth_filter.m
│── README.md
│── magnitude_plot.png
│── phase_plot.png

🔮 Future Enhancements
Implement Band-Pass and Band-Stop Butterworth filters
Add Chebyshev and Elliptic filter designs for comparison
Interactive GUI for filter specifications
Python implementation using SciPy
🚀 Applications
Audio signal filtering
Noise reduction in communication systems
Biomedical signal processing (ECG, EEG)
Real-time DSP applications
👨‍💻 Author

Kishor
Engineering Student
GitHub: https://github.com/Kishor055

⭐ Support

If you find this project helpful, consider giving the repository a ⭐ on GitHub!


---
