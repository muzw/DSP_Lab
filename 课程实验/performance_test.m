% fft性能测试
clc;
clear;
xn = rand(1,1024);

fprintf('内置fft程序');
tic;
for i=1:100
    fft(xn);
end
toc;

fprintf('我的dft程序');
tic;
for i=1:100
    dft(xn);
end
toc;

fprintf('我的fft程序');
tic;
for i=1:100
    my_fft(xn);
end
toc;

