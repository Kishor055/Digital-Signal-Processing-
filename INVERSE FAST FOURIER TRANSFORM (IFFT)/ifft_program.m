clc;
clear;
close all;

n = input('Enter value of n: ');
x = input('Enter input sequence: ');

% FFT
y = fft(x, n);
disp('FFT of input sequence:');
disp(y);

% IFFT
z = ifft(y);
disp('IFFT of input sequence:');
disp(real(z)); % remove small imaginary errors
