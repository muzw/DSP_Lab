clc;
clear all;

wn = [0.3 0.5];
N = 45;

window = hanning(N+1);
han_45 = fir1(N,wn,'bandpass',window);

freqz(han_45,1);

title('Hanning窗带通滤波器 N=45');