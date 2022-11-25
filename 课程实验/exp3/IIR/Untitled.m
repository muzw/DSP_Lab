% 将SOS和G转换为滤波器系数B和A
%[B,A]=sos2tf(SOS,G);

% 从Hd中恢复滤波器系数
[B,A]=tf(IIR_1);

%计算频率响应特性
[H,w] = freqz(B,A,10000);

%幅频响应
Hf = abs(H);

%相频响应
Hx = angle(H);

%采样频率
fs = 1;
clf;

figure(1);
%subplot(2,1,1);
plot(w*fs/(2*pi),20*log10(Hf));
title('幅频特性曲线');
% text();
% subplot(2,1,2);
% plot(w,Hx);
% title('相频响应');

%显示滤波器系数
%fprintf('B = %5.6f  ');

