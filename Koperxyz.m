% Koper xyz.
epsilon=0.05
Koper=@(t,x) [-(x(1)^3)+3*x(1)-10*x(2)+5*x(3)+3;epsilon*(x(1)-2*x(2)+x(3));epsilon*(x(2)-x(3))];
options = odeset('RelTol',1e-6,'AbsTol',1e-6);
[t,xa]=ode23s(Koper,[0 200],[0,0,0],options);
subplot(3,1,1)
plot(t,xa(:,1),'g')
fsize=12;
xlabel('t','Fontsize',fsize);
ylabel('x(t)','Fontsize',fsize);
subplot(3,1,2)
plot(t,xa(:,2),'r')
xlabel('t','Fontsize',fsize);
ylabel('y(t)','Fontsize',fsize);
subplot(3,1,3)
plot(t,xa(:,3),'m')
xlabel('t','Fontsize',fsize);
ylabel('z(t)','Fontsize',fsize);