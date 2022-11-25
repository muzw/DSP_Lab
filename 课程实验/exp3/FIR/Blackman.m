clc;
clear all;

wn = [0.3 0.5];
N = 45;

window = blackman(N+1);
blackman_45 = fir1(N,wn,'bandpass',window);

freqz(blackman_45,1);

title('Blackman窗带通滤波器 N=45');