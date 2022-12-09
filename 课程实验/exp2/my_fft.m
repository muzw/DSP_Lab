function [ xk ] = my_fft( xn )
%MY_FFT fft函数(输入为时域序列),输出为dft频域序列
len = length(xn);        % 序列长度
layer = log2(len);       % fft层数
xk = bitrevorder(xn);   % 输入倒位序
for lay = 1:layer
    x_even = xk(:,1:2:len);     % 偶抽取
    x_odd = xk(:,2:2:len);      % 奇抽取
    
    % 第lay层 有len/2个组蝶形运算,每组有2^lay个蝶形运算
    % 将每层的len/2个组蝶形运算分解到矩阵的len/2列上
    % 将每组2^lay个蝶形运算分解到矩阵的2^lay行上
    
    N = 0:2^(lay-1)-1;
    Wn = exp((-1j*2*pi)/(2^lay));
    W = Wn.^N;
    % 将旋转因子转置,并复制为len/2列
    %W = repmat(W',1,len/2);
    % 给x_odd的每一行乘上相同的旋转因子
    x_odd = x_odd.*repmat(W',1,len/2);
    
    % x_odd和x_even矩阵对应位置即为一个蝶形运算的两个输入
    % 将蝶形运算的两个输出上下拼接,可让下一轮偶抽取为蝶形运算的第一个输入,奇抽取为蝶形运算的第二个输入
    xk = [x_even + x_odd; x_even - x_odd];
    len = len/2; % 更新len
end
xk = xk';
end



