clear,clc
L= 1500;
M = 5.0*10^3;
T=100;
epsilon = 0.05;
dt = T/M;
alpha = 1;
sigma =0.8;
x(1)=0;
y(1)=0;
z(1)=0;
for i=1:L
    X=SDE_StableLevyMotion1(L+1,alpha);
    x(i+1)=x(i)+(3*x(i)-x(i)^3-10*y(i)+5*z(i)+3)*dt+sigma*(X(i+1)-X(i));
    y(i+1)=y(i)+epsilon*(x(i)-2*y(i)+z(i))*dt;
    z(i+1)=z(i)+epsilon*(y(i)-z(i))*dt;
end
plot3(x,y,z,'r')
xlabel('x')
ylabel('y')
zlabel('z')