
close all
clear all
clc
t = [0:0.001:5];
x1 = sin(2*pi*2*t); 
z1 = fft(x1);
z1=abs(z1);
x2 = sin(2*pi*10*t); 
z2 = fft(x2);
z2=abs(z2);
figure;
subplot(4,1,1); 
plot(x1);
title('signal 1');
xlabel('time');
ylabel('amplitude');
subplot(4,1,2); 
plot(x2);
title('signal 2');
xlabel('time');
ylabel('amplitude');
subplot(4,1,3); plot(z1);
title('Spectrum of signal 1');
xlabel('freqency');
ylabel('magnitude');
subplot(4,1,4); 
plot(z2);
title('Spectrum of signal 2');
xlabel('freqency');
ylabel('magnitude');
z=z1+z2;
x = x1+x2;
figure;
subplot(2,1,1);
plot(z);
title('frequency multiplexed signals'); 
subplot(2,1,2)
plot(t,x);