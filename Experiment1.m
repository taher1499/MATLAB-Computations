a=[38;44;41;40;41;39;44;46;38;42];
b=[43;41;40;39;36;35;45;42;41;41];
c=[48;42;43;41;39;40;43;38;42;40];
d=[45;43;41;42;42;39;40;39;40;41];
e=[36;39;41;40;46;42;40;39;37;42];
A=[mean(a);median(a);std(a);range(a);iqr(a)]
B=[mean(b);median(b);std(b);range(b);iqr(b)]
C=[mean(c);median(c);std(c);range(c);iqr(c)]
D=[mean(d);median(d);std(d);range(d);iqr(d)]
E=[mean(e);median(e);std(e);range(e);iqr(e)]
t=[a b c d e]
data=[A B C D E]
boxplot(t)
ylabel('Rockwell-C Hardness Values')
xlabel('Samples')