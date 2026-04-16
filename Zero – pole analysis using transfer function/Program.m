clc; 
clear all; 
close all; 
p1=input(‘enter the numerator matrix’); 
q1=input(‘enter the denominator matrix’); 
sys=tf(p1,q1); 
pzmap(sys) 
grid on; 