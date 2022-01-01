clc
y=1;
t=0;
z=1;
h=0.05;
yvalues=zeros(41,1);
tvalues=zeros(41,1);
zvalues=zeros(41,1);
yvalues(1)=y;
tvalues(1)=t;
zvalues(1)=z;
for i=1:40;
    k1=h*fun41(t,y);
    k2=h*fun41(t+0.5*h,y+0.5*k1);
    k3=h*fun41(t+0.5*h,y+0.5*k2);
    k4=h*fun41(t+h,y+k3);
    y=y+1/6*(k1+2*k2+2*k3+k4);
    t=t+0.05;
    z=exp((t.^4)/4-1.5*t);
    yvalues(i+1)=y;
    tvalues(i+1)=t;
    zvalues(i+1)=z;
end

disp(yvalues)
disp(tvalues)


plot(tvalues,yvalues,'b')
hold on
plot(tvalues,zvalues,'b-x')


