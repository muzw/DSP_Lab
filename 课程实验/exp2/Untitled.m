% 正弦衰减序列
clc;
A = 444.128;
alpha = 50*pi*sqrt(2);
omega0 = 50*pi*sqrt(2);
T = 1/1000;
n = 1:1024;
xa = A*exp(-alpha*T*n).*sin(omega0*T*n);

% 我的FFT算法性能测试
my_fft_time = 0;
for i=1:100
tic;
my_fft(xa);
my_fft_time = my_fft_time + toc;
end
my_fft_time = my_fft_time/100;

% DTFT算法性能测试
dft_time = 0;
for i=1:100
tic;
dft(xa);
dft_time = dft_time + toc;
end
dft_time = dft_time/100;
fprintf('%4.2f\n',my_fft_time/dft_time);


