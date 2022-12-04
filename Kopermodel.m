% Koper.
epsilon=0.05
Koper=@(t,x) [-(x(1)^3)+3*x(1)-10*x(2)+5*x(3)+3;epsilon*(x(1)-2*x(2)+x(3));epsilon*(x(2)-x(3))];
options = odeset('RelTol',1e-4,'AbsTol',1e-4);
[t,xa]=ode45(Koper,[0 10000],[0,0,0],options);
plot3(xa(:,1),xa(:,2),xa(: ,3))
%title('The Koper trajectoty')
fsize=15;
xlabel('x(t)','Fontsize',fsize);
ylabel('y(t)','Fontsize',fsize);
zlabel('z(t)','FontSize',fsize);
