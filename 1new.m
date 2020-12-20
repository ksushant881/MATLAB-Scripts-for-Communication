t=-10:0.0001:10;
x=sin(pi*t);
y=cos(pi*t);
z=y+x;


subplot(3,1,1)
plot(t,x)
xlabel('t')
ylabel('x(t)')
title('sine function')

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
