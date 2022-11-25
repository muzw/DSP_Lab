clc;
clear all;

wn = [0.3 0.5];
N = 45;

window = rectwin(N+1)
rect_45 = fir1(N,wn,'bandpass',window);

freqz(rect_45,1);

title('矩形窗带通滤波器 N=45');