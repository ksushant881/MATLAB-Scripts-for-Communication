x=[2 6 8 7]
b=0;
n=length(x);
y=sym('z')
for i=1:n
    b=b+x(i)*y^(1-i);
end
display(b);
ezplot(b);