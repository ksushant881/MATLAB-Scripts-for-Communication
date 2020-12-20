clc;
clear all;
close all;
fm=25;
fc=100;
am=1;
ac=2;
kp=pi;
t=0:0.00001:0.5;

m=am*cos(2*pi*fm*t);
subplot(3,1,1);
plot(t,m);
xlabel('Time');
ylabel('Amplitude');
title('Message Signal');
grid on;

c=ac*cos(2*pi*fc*t);
subplot(3,1,2);
plot(t,c);
xlabel('Time');
ylabel('Amplitude');
title('Carrier Signal');
grid on;

y=ac*cos(2*pi*fc*t + (kp*m));
subplot(3,1,3);
plot(t,y);
xlabel('Time');
ylabel('Amplitude');
title('PM Signal');
grid on;
