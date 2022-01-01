function[m]=fun3_3(t)
syms t;
Q=9+4*cos(0.4*t)*cos(0.4*t);
c=5*exp(-0.5*t)+2*exp(-0.15*t);
m=Q*c
end

