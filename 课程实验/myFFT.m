function x = myFFT( x)
N = length(x);
round = log2(N); % 绾ф暟
i = 1;
j = N/2;
X_even = x(1:i,1:j);
X_odd = x(1:i,j+1:j*2);
x = [X_even + X_odd; X_even-X_odd];
i = i * 2;
j = j / 2;
for k = 2:round
    size(x);
X_even = x(1:i,1:j);
X_odd = x(1:i,j+1:j*2);
temp = (0:i-1)';
temp = exp(-1j*2*pi*temp/(i*2));
temp = repmat(temp, 1, j);
X_odd = X_odd .* temp;
x = [X_even + X_odd; X_even-X_odd];
i = i * 2;
j = j / 2;
end
x = reshape(x, 1, N);
end

