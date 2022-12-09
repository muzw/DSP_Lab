function [ xk ] = new_fft( xn )
%MY_FFT 此处显示有关此函数的摘要
%   此处显示详细说明
len = length(xn);        % 序列长度
layer = log2(len);       % fft层数

xk = bitrevorder(xn);   % 输入倒位序
for lay = 1:layer
    x_even = xk(:,1:2:len);
    x_odd = xk(:,2:2:len);
    
    N = 0:2^(lay-1)-1;
    Wn = exp((-1j*2*pi)/(2^lay));
    W = Wn.^N;
    
    W = repmat(W',1,len/2);
    x_odd = x_odd.*W;
    xk = [x_even + x_odd; x_even - x_odd];
    len = len/2;
end
xk = xk';
end

