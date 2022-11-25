clc;
clear all;
wn = [0.3 0.5];
n = 15;
window = hanning(n+1);

Han_15 = fir1(n, wn, 'bandpass', window);

freqz(Han_15, 1);

title('Hanning窗带通滤波器 N=15')

%powerbw(Han_15);