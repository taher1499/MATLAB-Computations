clear
s=0;
x=[-1,1];
count=0;
b=0;
while s<10;
    if s==0;
        s=s+1;
    else 
        b=randi(2,1,1);
        a=x(b);
        s=s+a;
    end
    count=count+1;
    
end
count