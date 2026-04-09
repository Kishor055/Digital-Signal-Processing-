clc;
clear all;
close all;

disp('Enter the IIR filter design specifications:');

% Filter specifications
rp = input('Enter the passband ripple (dB): ');
rs = input('Enter the stopband ripple (dB): ');
wp = input('Enter the passband frequency (Hz): ');
ws = input('Enter the stopband frequency (Hz): ');
fs = input('Enter the sampling frequency (Hz): ');

% Normalize frequencies with respect to Nyquist frequency
w1 = 2 * wp / fs;   % Normalized passband
w2 = 2 * ws / fs;   % Normalized stopband

% Calculate filter order and cutoff frequency
[n, wn] = buttord(w1, w2, rp, rs);

% Choose filter type
c = input('Enter choice of filter: 1.LPF 2.HPF: ');

if c == 1
    disp('Frequency response of IIR LPF:');
    [b, a] = butter(n, wn, 'low'); % Low-pass filter
elseif c == 2
    disp('Frequency response of IIR HPF:');
    [b, a] = butter(n, wn, 'high'); % High-pass filter
else
    error('Invalid choice! Enter 1 for LPF or 2 for HPF.');
end

% Frequency response computation
w = 0:0.01:pi;
h = freqz(b, a, w);
m = 20*log10(abs(h));  % Magnitude in dB
an = angle(h);          % Phase in radians

% Plot magnitude and phase response
figure;
subplot(2,1,1);
plot(w/pi, m, 'LineWidth', 1.5);
title('Magnitude Response of IIR Butterworth Filter');
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Gain (dB)');
grid on;

subplot(2,1,2);
plot(w/pi, an, 'LineWidth', 1.5);
title('Phase Response of IIR Butterworth Filter');
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Phase (radians)');
grid on;
