clear

r=randi(12,1000,1)
count=0
prob=0
for i=1:1000
    if mod(r(i,1),2)==0
        count=count+1
    end
    prob(i)=count/i;
        
end

plot(prob)

