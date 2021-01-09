syms t s
F = 1/s^2;
f = ilaplace(F);
disp(f);
ezplot(f) 
