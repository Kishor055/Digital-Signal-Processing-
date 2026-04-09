clc;
clear all;
close all;

t = 0:0.001:0.1;

f1 = 50;
y1 = sin(2*pi*f1*t);

figure;
subplot(3,1,1);
plot(t, y1);
title('Sinusoidal Signal (50 Hz)');
xlabel('Time');
ylabel('Amplitude');

f2 = 100;
y2 = sin(2*pi*f2*t);

subplot(3,1,2);
plot(t, y2);
title('Sinusoidal Signal (100 Hz)');
xlabel('Time');
ylabel('Amplitude');

y = y1 + y2;

subplot(3,1,3);
plot(t, y);
title('Sum of Two Sinusoids');
xlabel('Time');
ylabel('Amplitude');
