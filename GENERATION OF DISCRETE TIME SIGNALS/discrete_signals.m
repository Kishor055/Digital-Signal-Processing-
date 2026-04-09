%unit impulse function%
%Discrete%
n=-10:10;
Xn=(n==0);
subplot(3,2,1);
stem(n,Xn);
axis([-11 11 -0.5 1.5]);
xlabel('Samples');
ylabel('amplitude');
title(' unit impulse function');
%unit step function%
%Discrete%
n=-10:10;
Xn=(n>=0);
subplot(3,2,2);
stem(n,Xn);
axis([-11 11 -0.5 1.5]);
xlabel('Samples');
ylabel('amplitude');
title(' discrete unit step function');
%unit ramp function%
%Discrete%
n=-10:10;
Xn=(n>=0).*n;
subplot(3,2,3);
stem(n,Xn);
axis([-11 11 -1 11]);
xlabel(' Samples');
ylabel('amplitude');
title(' discrete unit ramp function');
% exponential signal:
%Discrete%
n2=input('enter the length of the exponential sequence');
t=0:n2;
a=input('enter the a value');
y2=exp(a*t);
subplot(3,2,4);
stem(t,y2);
ylabel('amplitude');
xlabel('time period');
title('exponential sequence')
%sawtooth signal
%Discrete%
n=0:10;
Xn=sawtooth(pi*n/4);
subplot(3,2,5);
stem(n,Xn);
axis([-0.5 11 -1.5 1.5])
xlabel('time period');
ylabel('amplitude');
title('sawtooth sequence'); 
