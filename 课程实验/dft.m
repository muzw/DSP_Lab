function [ Xk ] = dft( xn )
%DFT 此处显示有关此函数的摘要
%   此处显示详细说明
    N = length(xn);
    n = 0:N-1;
    
    Xk = zeros(1,N);
    for k= 0:N-1
        w = exp((-2*1j * pi * k /N).*n);
        Xk(k+1) = dot(xn,w);
    end
end

