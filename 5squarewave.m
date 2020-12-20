clear all;
close all;
clc;

n=input('Number of cycles:')
a=0 
t=a:0.001:n
for i=0:n
    
    u=(t>=a)-(t>=a+1)-((t>=a+1)-(t>=a+2))
    plot(t,u)
    hold on;
    a=a+2
end

