f1=50;
f2=200;
fs=1000;
n=1:500;
x=0.5+1.2*sin(2*pi*f1*n/fs)+0.5*cos(2*pi*f2*n/fs);
x=x+awgn(x,10,'measured');
