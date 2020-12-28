%Generation of CTS
clear all;
close all;
clc;
%Generation of sine wave
t=0:0.01:2;
x=sin(2*pi*t);
subplot(3,2,1)
plot(t,x);
xlabel('Time');
ylabel('Amplitude');
title('Sine wave');
%Generation of cosine wave
t=0:0.01:2;
x=cos(2*pi*t);
subplot(3,2,2)
plot(t,x);
xlabel('Time');
ylabel('Amplitude');
title('Cosine wave');
%Generation of exponentially growing wave
t=-2:0.01:2;
a=0.5;
x=a*exp(t);
subplot(3,2,3)
plot(t,x);
xlabel('Time');
ylabel('Amplitude')
title('Exponentially growing wave');
%Generation of exponentially decaying wave
t=-2:0.01:2;
a=0.5;
x=a*exp(-t);
subplot(3,2,4)
plot(t,x);
xlabel('Time');
ylabel('Amplitude')
title('Exponentially decaying wave');
%saw tooth graph
t=0:0.01:2;
x=sawtooth(10*t);
subplot(3,2,5);
plot(t,x);
xlabel('Time');
ylabel('Amplitude')
title('Sawtooth');
%triangular graph
t=0:0.01:2;
x=sawtooth(10*t,0.5);
subplot(3,2,6);
plot(t,x);
xlabel('Time');
ylabel('Amplitude')
title('Triangular');
%Delayed unit ramp sequence
t=-1:1:3;
x=[0 0 0 1 2];
subplot(3,2,4);
stem(t,x);
xlabel('Time');
ylabel('Amplitude');
title('Delayed unit ramp sequence');
%Generate unit impulse sequence
t=-2:1:2;
x=[0 0 1 0 0];
subplot(3,2,5);
stem(t,x);
xlabel('Time');
ylabel('Amplitude');
title('Unit impulse sequence');
%Delayed unit impulse sequence
t=-2:1:2;
x=[0 0 0 1 0];
subplot(3,2,6);
stem(t,x);
xlabel('Time');
ylabel('Amplitude');
title('Delayed unit impulse sequence');