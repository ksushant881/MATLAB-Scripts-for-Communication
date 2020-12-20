%Sushant_b180062EC
clc;
close all;
clear all;
a = 2;
f = 5;
t = 0:0.02:1; 
x1 = 1; 
x2 = 2*sin(2*pi*f*t); 
y = x1.*x2; 
subplot(3,1,1);
stem(x1);
title('Impulse Signal');
xlabel('Time');
ylabel('Amplitude ');
subplot(3,1,2) 
plot(t,x2);
title('Sine Wave');
xlabel('Time ');
ylabel('Amplitude ');
subplot(3,1,3) 
stem(t,y);
title('PAM Wave');
xlabel('Time');
ylabel('Amplitude');
