function [ xk ] = old_fft( xn )
%MY_FFT 此处显示有关此函数的摘要
%   此处显示详细说明
len = length(xn);        % 序列长度
layer = log2(len);       % fft层数

xk = bitrevorder(xn);   % 输入倒位序
for lay = 1:layer
    Wn = exp((-1j*2*pi)/(2^lay));
    for k = 1:len/2^(lay)    % 每层分成k个部分
        for m = 1:2^(lay-1)  % 每个部分做m次蝶形运算  
            p_index = m+2^(lay)*(k-1);
            q_index = p_index + 2^(lay-1);
            p = xk(p_index);
            q = xk(q_index);
            W = Wn^(m-1);
            xk(p_index) = p + q*W;
            xk(q_index) = p - q*W;
        end
    end
end
end