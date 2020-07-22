close all

figure
Xini=[20;10;30];
[t,y]=ode45(@lorenzeq,[0 40],Xini);
N=length(t);
for i=1:N
    plot3(y(1:i,1),y(1:i,2),y(1:i,3));
    axis([-30 60 -30 60 -30 60])
    view(20,15)
    hold on
    plot3(y(i,1),y(i,2),y(i,3),'or');
    pause(0.01)
    hold off
end