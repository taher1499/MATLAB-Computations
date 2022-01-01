clc
y=0.01;
s=0;
for i=1:49
    s=s+fun(y);
    y=y+0.01;
end
NI=0.005*(fun(0)+2*s+fun(0.5));
z=sqrt(NI)

a=int(fun2,0,0.5);
b=vpa(a);
sqrt(b)


r=5*exp(-1.25*t)*sin(2*pi*t)
k=0
fplot(r,[0 0.5],'b')
hold on
fplot(k,[0.5 1],'b')
hold off


