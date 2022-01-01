a=[3 5 7 11]
x=[1 1 1 1]
y=[0 0 0 0]  
for i= 1:4;
while x(i)~=((a(i)/x(i))+x(i))/2;
    y(i)=((a(i)/x(i))+x(i))/2;
    x(i)=y(i);
end
end
x
