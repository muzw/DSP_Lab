function [ ] = compare( xn , supertitle)
%COM 此处显示有关此函数的摘要
%   此处显示详细说明
subplot(3,1,1);
stem(abs(my_fft(xn)));
title('我的FFT函数');
subplot(3,1,2);

stem(abs(fft(xn)));
title('Matlab内置FFT函数');
subplot(3,1,3);

stem(abs(fft(xn)-my_fft(xn)));
title('二者差别');
suptitle(supertitle);

end

