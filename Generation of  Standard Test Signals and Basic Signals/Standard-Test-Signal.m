clc;
close all;
clear all;
fs=4000;
ts=1/fs;
t=0:ts:1;
f=4;

% sine wave %
x=sin(2*pi*f*t);
subplot(4,2,1);
plot(t,x);
xlabel('time');
ylabel('amplitude');
title('sine wave');
 
% cosine wave %
y=cos(2*pi*f*t);
subplot(4,2,2);
plot(t,y);
xlabel('time');
ylabel('amplitude');
title('cosine wave');
 
% unit impulse function %
n=-10:10;
Xn=(n==0);
subplot(4,2,3);
stem(n,Xn);
axis ([-11 11 -0.5 1.5]);
xlabel('samples');
ylabel('amplitude');
title('unit impulse function');
 
% unit step function %
n=-10:10;
Xn=(n>=0);
subplot(4,2,4);
stem(n,Xn);
axis ([-11 11 -0.5 1.5]);
xlabel('samples');
ylabel('amplitude');
title('unit step function');

% unit ramp function %
n=-10:10;
Xn=(n>=0).*n;
subplot(4,2,5);
stem(n,Xn);
axis ([-11 11 -1 11]);
xlabel('samples');
ylabel('amplitude');
title('unit ramp function');
 
% exponential signal %
n2=input('enter the legth of the exponential sequence');
t=0:n2;
a=input('enter the a value');
y2=exp(a*t);
subplot(4,2,6);
stem(t, y2);
xlabel('time period');
ylabel('amplitude');
title('exponential sequence');
 
% sawtooth signal%
n=0:10;
Xn=sawtooth(pi*n/4);
subplot(4,2,7);
stem(n,Xn);
axis ([-0.5 11 -1.5 1.5]);
xlabel('time period');
ylabel('amplitude');
title('sawtooth sequence');