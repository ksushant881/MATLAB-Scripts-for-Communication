clear all;
close all;
clc;
x=input('Enter the array:')
l=length(x)

p=input('Enter the zeroth position:')
n=1-p:l-p
a=input('Enter the amount of shift:')
b=input('Enter 0 for delay and 1 for advance:')
if b==0
    n=n+a
else
    n=n-a
end
stem(n,x)
xlabel('n')
ylabel('x(n)')
title('Discrete Signal')
