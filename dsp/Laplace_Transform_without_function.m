syms t s
f= t;
g=f*exp(-s*t);
h=int(g,t);
disp(h);
ezplot(h);