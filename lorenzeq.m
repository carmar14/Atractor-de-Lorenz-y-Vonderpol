function dydt=lorenzeq(t,Xest)


x=Xest(1);
y=Xest(2);
z=Xest(3);

dydt=[10*(y-x);
    28*x-(y+x*z);
    x*y-8/3*z];