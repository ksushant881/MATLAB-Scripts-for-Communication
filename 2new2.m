t=-1:0.0001:1;
x=exp(-3*t);
y=cos(5*pi*t);
z=y.*x;


subplot(3,1,1)
plot(t,x)
xlabel('t')
ylabel('x(t)')
title('exponential function')


subplot(3,1,2)
plot(t,y)
xlabel('t')
ylabel('y(t)')
title('cosine function')

subplot(3,1,3)
plot(t,z)
xlabel('t')
ylabel('z(t)')
title('result function')
