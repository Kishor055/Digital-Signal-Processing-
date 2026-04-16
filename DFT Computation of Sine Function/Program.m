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