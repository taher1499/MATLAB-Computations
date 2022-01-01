fplot(func,[0 1])

function[r]=func(t)
if t<0.5
    r=5*exp(-1.25*t)*sin(2*pi*t);
else
    r=0
end
end


