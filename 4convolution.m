close all;
clear all;
clc;
x1=input('Enter the sequence 1:')
% x1=[1 2 3 4]
p1=input('Enter the zeroth position:')
l1=length(x1)
n1=(1-p1):(l1-p1)

x2=input('Enter the sequence 2:')
% x2=[2 3 4 5 6]
p2=input('Enter the zeroth position:')
l2=length(x2)
n2=(1-p2):(l2-p2)

y=conv(x1,x2)
n3=(2-p1-p2):(l1+l2-p1-p2)

subplot(3,1,1)
stem(n1,x1)
d1=line(xlim,[0,0])
f1=line([0,0],ylim)
xlabel('n')
ylabel('x1(n)')
title('First Function')

subplot(3,1,2)
stem(n2,x2)
d1=line(xlim,[0,0])
f1=line([0,0],ylim)
xlabel('n')
ylabel('x2(n)')
title('Second Function')

subplot(3,1,3)
stem(n3,y)
d1=line(xlim,[0,0])
f1=line([0,0],ylim)
xlabel('n')
ylabel('g(n)')
title('Convoluted Function')
grid on;

