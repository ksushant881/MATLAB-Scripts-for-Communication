%Sushant_b180062EC
clc;
close all;
clear all;
t=0:0.0001:1;
s=sawtooth(2*pi*10*t);
m=0.75*sin(2*pi*1*t);
n=length(s);
for i=1:n
 if (m(i)>=s(i))
 pwm(i)=1;
 elseif (m(i)<=s(i))
 pwm(i)=0;
 end
end
plot(t,pwm,'g',t,m,'r',t,s,'b');
ylabel('Amplitude');
axis([0  1 -1.5 1.5]);
xlabel('Time index');
title('PWM Wave');
grid on;