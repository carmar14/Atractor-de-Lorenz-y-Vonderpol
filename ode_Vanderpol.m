close all

figure
axis([-6 6 -6 6])
Xini=ginput(1);
[t,y]=ode45(@vdp1,[0 20],Xini);
N=length(t);
for i=1:N
    plot(y(1:i,1),y(1:i,2));
    axis([-6 6 -6 6])
    hold on
    plot(y(i,1),y(i,2),'or');
    pause(0.1)
    hold off
end