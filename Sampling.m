f = 2000;
T = 1/f;
tmin = 0;
tmax = 5*T;             

t1 = tmin:0.00000001:tmax;
t2 = tmin:0.00001:tmax;
x1 = sin(2*pi*f*t1);
x2 = sin(2*pi*f*t2);
subplot(211)
plot(t1,x1);
subplot(212)
stem(t2,x2);

%reconstruction
figure; plot(t2,x2);