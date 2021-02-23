%B

n = (0 : 30);

delta = @(n) 1.0 .* (n == 0);

% Denominator
a = [1 -3/10 -1/10];

% Numerator
b = [2 0 0];

% Initial Conditions
y = [1 2];

% Zeros
z = zeros(size(n));

z_i = filtic(b,a,y);
y_0 = filter(b,a,z,z_i);

figure;
stem(n,y_0);
title('Zero Input Response');
ylabel('y_{0}[n]');
xlabel('n');

