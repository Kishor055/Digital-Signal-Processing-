clc;
close all;
clear all;
tic;
fprintf('Date & Time:');
Date= datestr(now);
disp(Date);
%DFT
disp('D.F.T');
a=input('Enter the input sequence:');
n=length(a);
x=fft(a,n);
for k=1:n;
y(k)=0;
for i=1:n
y(k)=y(k)+a(i)*exp((-j)*2*pi*(i-1)*(k-1)*(1/n));
end
end
error=x-y;
disp(x);
disp(y);
disp(error);
subplot(3,2,1);
stem(a);
xlabel('time index n------>');
ylabel('amplitude');
title('input sequence');
subplot(3,2,2);
stem(0:n-1,abs(x));
xlabel('time index n------>');
ylabel('amplitude');
title('FFT sequence by inbuilt command');
subplot(3,2,5);
stem(0:n-1,abs(y));
xlabel('time index n------>');
ylabel('amplitude');
title('DFT by formula calculation');
subplot(3,2,6);
stem(error);
xlabel('time index n------>');
ylabel('amplitude');
title('error sequence');
% Power Spectral Density
P = x.* conj(x) / 512;
f = 1000*(0:256)/512;
figure,plot(f,P(1:257))
title('Frequency content of y');
xlabel('frequency (Hz)');
