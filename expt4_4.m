clear
clc
H = 237;
rho = 2700;
Cp = 920;
T1 = 273;
h = 0.02;
k = 0.2;
r = k/(h^2);
l = 0:h:0.1;
t = 0:k:2;
T = zeros(1,length(t));
T(1) = 373;
T(length(t)) = 323;
u = zeros(length(l), length(t));
u(1,:) = 100;
u(6,:) = 50;


dif = H/(rho*Cp);
a = r*dif/2;

for i = 1:length(l)-2
    u(i+1,1) = 0;
end

for i = 2:length(t)
    A = [2.0477, -0.0239, 0, 0; -0.0239, 2.0477, -0.0239, 0; 0, -0.0239, 2.0477, -0.0239; 0, 0, -0.0239, 2.0477];

    b = [1.9523*u(2,i-1)+0.0239*(u(3,i-1)+u(1,i-1))+100*a;
        1.9523*u(3,i-1)+0.0239*(u(4,i-1)+u(2,i-1));
        1.9523*u(4,i-1)+0.0239*(u(5,i-1)+u(3,i-1));
        1.9523*u(5,i-1)+0.0239*(u(6,i-1)+u(4,i-1))+50*a]
    
    X = inv(A)*b
    u(2:5,i) = X
end

t1 = linspace(0,2,11)
figure
plot(t1,u(1,:))
hold on 
plot(t1,u(2,:))
plot(t1,u(3,:))
plot(t1,u(4,:))
plot(t1,u(5,:))
plot(t1,u(6,:))
legend('Temp at 0cm', 'Temp at 2cm', 'Temp at 4cm', 'Temp at 6cm', 'Temp at 8cm', 'Temp at 10cm')


