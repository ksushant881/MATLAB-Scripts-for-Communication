x=[1 4 6 7 6 2];
h=[5 4 2 8 2 3 2];
subplot(4, 1, 1);
stem(x);
title('Sequence of x[n]');
subplot(4, 1, 2);
stem(h);
title('Sequence of h[n]');
% convolution with function
subplot(4, 1, 3);
stem(conv(x, h))
title('Linear Convolution with inbuilt function');
% convolution without function
m=length(x);
n=length(h);
X=[x,zeros(1,n)];
H=[h,zeros(1,m)];
for i=1:n+m-1
Y(i)=0;
for j=1:m
if(i-j+1>0)
Y(i)=Y(i)+X(j)*H(i-j+1);
else
end
end
end
subplot(4, 1, 4);
stem(Y);
title('Linear Convolution without built-in function');