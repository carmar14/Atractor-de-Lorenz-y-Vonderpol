function manddelbrot(centro,lado,maxiter,N,color)
Xmin=centro(1)-lado/2;
Xmax=centro(1)+lado/2;
Ymax=centro(2)-lado/2;
Ymin=centro(2)+lado/2;

x=linspace(Xmin,Xmax,N);
y=linspace(Ymin,Ymax,N);

for kx=1:N
    for ky=1:N
        Mf(kx,ky)=ColorMandel(x(kx),y(ky),maxiter);
    end
end

figure
[Xf,Yf]=meshgrid(x,y);
surface(Xf,Yf,Mf)
shading interp
colormap(color)


function contador=ColorMandel(x,y,maxiter)

c=x+y*i;
z=0;
contador=0;
while((abs(z)<2.0)&&(contador<maxiter))
    z=z^2+c;
    contador=contador+1;
end

