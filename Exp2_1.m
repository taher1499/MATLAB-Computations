clear
A=[0 10 4 -2;
   -3 -17 1 2;
   1 1 1 0;
   8 -34 16 -10;]
b=[-4;2;6;4];

X=linsolve(A,b)
Z=inv(A)