clc;
clear all;
close all;

x1 = input('enter the first sequence=');
n = 0:length(x1)-1;
subplot(3,1,1);
stem(n, x1);
xlabel('n');
ylabel('amplitude');
title('first sequence');

x2 = input('enter the second sequence=');
n = 0:length(x2)-1;
subplot(3,1,2);
stem(n, x2);
xlabel('n');
ylabel('amplitude');
title('second sequence');

y = conv(x1, x2);
n = 0:length(y)-1;

subplot(3,1,3);
stem(n, y);
xlabel('n');
ylabel('amplitude');
title('Linear Convolution');