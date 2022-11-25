function [] = analyse( Hd , fs)
%ANA 此处显示有关此函数的摘要
%   此处显示详细说明
% 从Hd中恢复滤波器系数
[B,A]=tf(Hd);

%计算频率响应特性
[H,w] = freqz(B,A,10000);

%幅频响应
Hf = abs(H);

%相频响应
%Hx = angle(H);

clf;
figure(1);

plot(w*fs/(2*pi),20*log10(Hf));
xlabel('Frequency in Hz');
ylabel('Gain in dB');
title('幅频特性曲线');
end

