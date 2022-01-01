y= fzero(@fun4,-1)

oldvar=1000000;
newvar=0;
while abs(newvar-oldvar+(fun4(oldvar)/fun5(oldvar)))>10^-5;
    newvar=oldvar-(fun4(oldvar)/fun5(oldvar));
    oldvar=newvar;
end
newvar

