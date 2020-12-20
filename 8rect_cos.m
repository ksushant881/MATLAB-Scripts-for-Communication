N=250;
ts=0.0002;
t=[0:N-1]*ts;
x=cos(200*pi*t)+cos(1000*pi*t);
subplot(4,1,1)
plot(t,x);
grid on;
xlabel("f")
ylabel("t")
title("x w.r.t. t");
k=0;
for f=-800:1:800
    k=k+1;
    Y(k)=trapz(t,(x.*exp(-j*2*pi*f*t)));

end
f1=-800:1:800

subplot(4,1,2)
plot(f1,Y);

xlabel("f")
ylabel("Y(k)")
title("Y(k) w.r.t. f");
grid on;
subplot(4,1,3)
plot(f1,abs(Y));
xlabel("f1")
ylabel("abs(Y)")
title("abs(Y) w.r.t. f1");
grid on;
subplot(4,1,4)
plot(f1,angle(Y));
xlabel("f1")
ylabel("angle(Y)")
title("angle(Y) w.r.t. f1");
grid on;