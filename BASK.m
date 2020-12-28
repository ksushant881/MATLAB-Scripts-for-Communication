close all;
clear all;
clc;
%XXXXXXXXXXXXXXXXXXXXXXX Binary-ASK modulation XXXXXXXXXXXXXXXXXXXXXXXXXXX% 
A1=10; % Amplitude of carrier signal for information 1 
A2=5; % Amplitude of carrier signal for information 0 
bp=0.01;
br=1/bp; % bit rate 
f=br*10; % carrier frequency 
t2=bp/99:bp/99:bp; 
ss=length(t2); 
m=[]; 
x=[1 0 0 1 1 0 1 0 1];
for (i=1:1:length(x)) 
 if (x(i)==1) 
 y=A1*cos(2*pi*f*t2); 
 else 
 y=A2*cos(2*pi*f*t2); 
 end 
 m=[m y]; 
end 
t3=bp/99:bp/99:bp*length(x); 
subplot(3,1,2); 
plot(t3,m); 
xlabel('time(sec)'); 
ylabel('amplitude(volt)'); 
title('waveform for binary ASK modulation coresponding binary information'); 
%XXXXXXXXXXXXXXXXXXXX Binary ASK demodulation XXXXXXXXXXXXXXXXXXXXXXXXXXXXX 
mn=[]; 
for n=ss:ss:length(m) 
 t=bp/99:bp/99:bp; 
 y=cos(2*pi*f*t); % carrier siignal 
 mm=y.*m((n-(ss-1)):n); 
 t4=bp/99:bp/99:bp; 
 z=trapz(t4,mm) % intregation 
 zz=round((2*z/bp)) 
 if(zz>7.5) % logic level = (A1+A2)/2=7.5 
 a=1; 
 else 
 a=0; 
 end 
 mn=[mn a]; 
end 
disp(' Binary information at Reciver :'); 
disp(mn);
figure
stem(mn);
ylabel('Amplitude'); 
