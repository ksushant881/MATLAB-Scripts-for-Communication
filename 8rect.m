N=250;
t=-2:0.1:2;
k=0;
for f=-5:0.01:5
    k=k+1;
    Y(k)=trapz(t,(exp(-j*2*pi*f*t)));
    
end
f1=-5:0.01:5
subplot(3,1,1)
plot(f1,Y);
xlabel('f')
ylabel('Y(k)')
title('Y(k) w.r.t. f');
grid on;
subplot(3,1,2)
plot(f1,abs(Y));
xlabel('f1')
ylabel('abs(Y)')
title('abs(Y) w.r.t. f1');
grid on;
subplot(3,1,3)
plot(f1,angle(Y));
xlabel('f1')
ylabel('angle(Y)')
title('angle(Y) w.r.t. f1');
grid on;