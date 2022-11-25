function [  ] = coefficient( Hd )
%UNTITLED3 此处显示有关此函数的摘要
%   此处显示详细说明

% 从Hd中恢复滤波器系数
[B,A]=tf(Hd);

B
A

end

