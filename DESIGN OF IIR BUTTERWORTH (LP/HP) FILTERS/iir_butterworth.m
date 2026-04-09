clc;
clear;
close all;

disp('Enter the IIR filter design specifications');

rp = input('Enter the passband ripple: ');
rs = input('Enter the stopband ripple: ');
wp = input('Enter the passband frequency: ');
ws = input('Enter the stopband frequency: ');
fs = input('Enter the sampling frequency: ');

% Normalize frequencies
w1 = wp/(fs/2);
w2 = ws/(fs/2);

% Find filter order
[n, wn] = buttord(w1, w2, rp, rs);

c = input('Enter choice filter 1.LPF 2.HPF: ');

if (c == 1)
    disp('Frequency response of IIR LPF:');
    [b, a] = butter(n, wn, 'low');
else
    disp('Frequency response of IIR HPF:');
    [b, a] = butter(n, wn, 'high');
end

% Frequency response
[h, w] = freqz(b, a);

m = 20*log10(abs(h));
an = angle(h);

figure;

subplot(2,1,1);
plot(w/pi, m);
title('Magnitude Response of IIR Filter');
xlabel('Normalized Frequency');
ylabel('Gain (dB)');
grid on;

subplot(2,1,2);
plot(w/pi, an);
title('Phase Response of IIR Filter');
xlabel('Normalized Frequency');
ylabel('Phase (radians)');
grid on;
