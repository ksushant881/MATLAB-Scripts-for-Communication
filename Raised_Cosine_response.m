clc;
close all;
clear all;

a=0;
n=0.1;
f=n/2;
T=1/f;
t=-1:0.001:1;
x=sinc(t/T);
for i=1:9
    den=1-(2*a*t/T).^2;
    corr_term= (cos(pi*a*t/T))/den;
    z=x.*corr_term;
    plot(t,z);
    hold on;
    a=a+0.1;
    hold on;
end
figure;
for i=1:9
    den=1-(2*a*t/T).^2;
    corr_term= cos(pi*a*t/T)/den;
    z=x.*corr_term;
    hold on;
    y=abs(fft(z));
    plot(t,fftshift(y));
    a=a+0.1;
    hold on;
end


grid on;