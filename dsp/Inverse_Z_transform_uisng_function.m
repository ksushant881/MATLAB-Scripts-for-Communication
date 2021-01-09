clc;
close all;
clear all;
syms z;
F=2*z/(z-2)^2;
f=iztrans(F)
ezplot(f)