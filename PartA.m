%Part A
%1)
y1 = [1, 1/6, -1/6];
x1 = 1/3;

y2 = [1, 0, 1/4];
x2 = 1;


d =@(n) (n==0);
n = 0:3;

h1 = filter(x1,y1, d(n));
h2 = filter(x2,y2, d(n));
figure
stem(n, h1);
title("Part A: h1[n] Plot")
xlabel("n")
ylabel("h1[n]")
figure
stem(n, h2);
title("Part A: h2[n] Plot")
xlabel("n")
ylabel("h1[n]")

%2
%is found on paper

%h1[3] = 0.0015 from my calculations and that matches with the graph on
%matlab
%h2[3] = 0 from my calculation and that matches with the graph on matlab


