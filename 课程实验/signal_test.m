%% 正弦衰减序列
% 连续信号参数
A = 444.128;
alpha = 50*pi*sqrt(2);
omega0 = 50*pi*sqrt(2);
T = 1/1000;

n = 1:64;
xn = A*exp(-alpha*T*n).*sin(omega0*T*n);
subplot(3,1,1);
stem(abs(new_fft(xn)));
title('我的FFT函数');
subplot(3,1,2);

stem(abs(fft(xn)));
title('Matlab内置FFT函数');
subplot(3,1,3);

stem(abs(fft(xn)-new_fft(xn)));
title('二者差别');
