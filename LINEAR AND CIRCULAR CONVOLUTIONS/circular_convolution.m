%%Program for circular convolution
clc;
clear all;
close all;
%to get the input sequence
g=input('enter the input sequence');
h=input('enter the impulse sequence');
N1=length(g);
N2=length(h);
N=max(N1,N2);
N3=N1-N2
%loop for getting equal length sequence
if(N3>=0)
h=[h,zeros(1,N3)];
else
g=[g,zeros(1,-N3)];
end
%computation of circular convoluted sequence
for n=1:N;
y(n)=0;
for i=1:N;
j=n-i+1;
if(j<=0)
 j=N+j;
end
y(n)=y(n)+g(i)*h(j);
end
end
figure;
subplot(3,1,1);
stem(g);
ylabel('amplitude');
xlabel('n1..>');
title('input sequence')
subplot(3,1,2);
stem(h);
ylabel('amplitude');
xlabel('n2');
title('impulse sequence')
subplot(3,1,3);
stem(y);
ylabel('amplitude');
xlabel('n3');
disp('the resultant signal is');
