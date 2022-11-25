clc;
clear all;

wn = [0.2 0.4 0.6 0.8];
N = 40;

window = kaiser(N+1,8)
rect_45 = fir1(N,wn,'bandpass',window);

freqz(rect_45,1);

title('Kaiser窗带通滤波器 N=40 beta=8');