clc;
clear all;
close all;

rf = 0
span = 4;
sps = 3;
t=-1:1:11
for i=1:10
    h1 = rcosdesign(rf,span,sps,'normal')
    plot(t,h1) %time domain plot of raised cosine filter
    rf=rf+0.1
    hold on
    grid on;
    
end
rf=0
for i=1:10
    h1 = rcosdesign(rf,span,sps,'normal')
    rf=rf+0.1 %increasing roll off factor on every iteration
    fvtool(h1,'impulse') %impulse response of raised cosine filter
    hold on
    
end

