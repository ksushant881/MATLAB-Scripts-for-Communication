syms z n
G = (0.6321*z^-1)/(1-1.3679*z^-1+0.3679*z^-2)
g = iztrans(G, z, n)
n = linspace(0,14,15);
gn = double( subs(g, sym('n'), n) );
stem(gn, n);