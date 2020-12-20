clc;
clear all;
close all;
fm=25;

fc=100;
am=1;
ac=2;
t=0:0.001:0.5;

k=am/ac;

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

y=(1+(k*m)).*c;
subplot(3,1,3);
plot(t,y);
xlabel('Time');
ylabel('Amplitude');
title('AM Signal');
grid on;
