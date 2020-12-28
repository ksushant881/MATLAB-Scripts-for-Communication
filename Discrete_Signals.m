%Generation of DTS
clear all;
close all;
clc;
%Generation of unit step sequence
t=-2:1:2;
x=[0 0 1 1 1];
subplot(3,2,1);
stem(t,x);
xlabel('Time');
ylabel('Amplitude');
title('Unit step sequence');
%Delayed unit step sequence
t=-2:1:2;
x=[0 0 0 1 1];
subplot(3,2,2);
stem(t,x);
xlabel('Time');
ylabel('Amplitude');
title('Delayed unit step sequence');
%Generate unit ramp sequence
t=-1:1:3;
x=[0 0 1 2 3];
subplot(3,2,3);
stem(t,x);
xlabel('Time');
ylabel('Amplitude');
title('Unit ramp sequence');
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