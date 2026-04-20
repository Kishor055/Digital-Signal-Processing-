Clc;
Clear all;
Close all;
t = -2:0.05:2;
x=input('enter the input number');
fr1=697;
fr2=770;
fr3=852;
fr4=941;
fc1=1209;
fc2=1336;
fc3=1477;
fc4=1633;
y0 = sin(2*pi*fr4*t) + sin(2*pi*fc2*t); % 0
y1 = sin(2*pi*fr1*t) + sin(2*pi*fc1*t); % 1
y2 = sin(2*pi*fr1*t) + sin(2*pi*fc2*t); % 2
y3 = sin(2*pi*fr1*t) + sin(2*pi*fc3*t); % 3
y4 = sin(2*pi*fr2*t) + sin(2*pi*fc1*t); % 4
y5 = sin(2*pi*fr2*t) + sin(2*pi*fc2*t); % 5
y6 = sin(2*pi*fr2*t) + sin(2*pi*fc3*t); % 6
y7 = sin(2*pi*fr3*t) + sin(2*pi*fc1*t); % 7
y8 = sin(2*pi*fr3*t) + sin(2*pi*fc2*t); % 8
y9 = sin(2*pi*fr3*t) + sin(2*pi*fc3*t); % 9
y_start = sin(2*pi*fr4*t) + sin(2*pi*fc1*t); % *
y_canc = sin(2*pi*fr4*t) + sin(2*pi*fc3*t); % #
if (x==1)
 plot(t,y1)
 xlabel('time(t)')
 ylabel('amplitude')
elseif (x==2)
 plot(t,y2)
 xlabel('time(t)')
 ylabel('amplitude')
elseif (x==3)
 plot(t,y3)
 xlabel('time(t)')
 ylabel('amplitude')
elseif (x==4)
 plot(t,y4)
 xlabel('time(t)')
 ylabel('amplitude')
elseif (x==5)
 plot(t,y5)
 xlabel('time(t)')
 ylabel('amplitude')
elseif (x==6)
 plot(t,y6)
 xlabel('time(t)')
 ylabel('amplitude')
elseif (x==7)
 plot(t,y7)
 xlabel('time(t)')
 ylabel('amplitude')
elseif (x==8)
 plot(t,y8)
 xlabel('time(t)')
 ylabel('amplitude')
elseif (x==9)
 plot(t,y9)
 xlabel('time(t)')
 ylabel('amplitude')
elseif (x==0)
 plot(t,y0)
 xlabel('time(t)')
 ylabel('amplitude')
elseif (x==11)
 plot(t,y_start)
 xlabel('time(t)')
 ylabel('amplitude')
 elseif (x==12)
 plot(t,y_canc)
 xlabel('time(t)')
 ylabel('amplitude')
else
 disp('enter the correct input')
end
