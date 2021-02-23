%Part E
y = [1, -3/10, 1/10];
x = [2];
a = [1,2];

z= filtic(x,y,a);
n=0:10;
y0 = filter(x,y,zeros(size(n)),z);


%1.
yt= conv(y0,yz);

figure
n = 0:20;
stem(n,yt)
title("Part E1:")
xlabel("n")
ylabel("yt[n]")

%2.
%to check if it is the same as Part C

yt1 = y0 + yz;

figure
n = 0:20;
stem(n,yt)
title("Part E2:")
xlabel("n")
ylabel("yt[n]")

%The two graphs are identically, so the result from part c is the same as
%what was done in E1.

%3. The system total response returns a value of zero. Therefore the system
%is asympototically stable.