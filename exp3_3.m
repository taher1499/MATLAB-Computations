% clc
% a=int(fun3_3,2,8);
% b=vpa(a)

% Q=9+4*cos(0.4*t)*cos(0.4*t);
%  c=5*exp(-0.5*t)+2*exp(-0.15*t);
% fplot(Q,[2 8])
M=int(fun3_3,t)
% b=vpa(M)
fplot(M,[2 8])
