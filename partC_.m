%C

a = [1 -3/10 -1/10]; % Denominator
b = [2 0 0]; % Numerator

n = 0:20;
u =@(n) 1.0.*(n>=0);
x = @(n) 2.*cos((2*pi.*n)/6).*(u(n)-u(n-10));

y = filter(b, a, x(n));

figure; grid minor; hold on;
stem(n,y);
title("Part C: Zero-State Response of the System");
xlabel("n");
ylabel("y[n]");
