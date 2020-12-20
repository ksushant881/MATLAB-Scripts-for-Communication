clear all;
close all;
clc;
t=-10:0.001:10
T=input('Enter the slope:')
a=input('Enter the amplitude:')
u=(t>=-T)-(t>=T)
x=a*(1-abs(t)/T).*u
plot(t,x)
xlabel('t')
ylabel('x(t)')
title('Triangular Wave')