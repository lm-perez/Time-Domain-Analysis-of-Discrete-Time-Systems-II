%F

%1) (separate)

%2)Function is at the end of the code.

%3) As the value of N increases, the value of the moving average decreases
%which also results in a decreasing amplitude.

n = [0: 45];
x = @(n) cos((pi.*n)/5) + (1.0.*((n==30)-(n==35)));

[a,b] = max_filter(4); %N = 4
y_4 = filter(b,a,x(n));

[a,b] = max_filter(8); %N = 8
y_8 = filter(b,a,x(n));

[a,b] = max_filter(12); %N = 12
y_12 = filter(b,a,x(n));

figure; stem(n,y_4,'filled','r'); hold on; stem(n,x(n),'k'); grid minor;
xlabel('n'); ylabel('y_{1}[n]'); title('Part F: 4-Point Filter (N = 4)');
legend('N = 4', 'Input Data (x[n])');

figure; stem(n,y_8,'filled','r'); hold on; stem(n,x(n),'k'); grid minor;
xlabel('n'); ylabel('y_{2}[n]'); title('Part F: 8-Point Filter (N = 8)');
legend('N = 8', 'Input Data (x[n])');

figure; stem(n,y_12,'filled','r'); hold on; stem(n,x(n),'k'); grid minor;
xlabel('n'); ylabel('y_{3}[n]'); title('Part F: 12-Point Filter (N = 12)');
legend('N = 12', 'Input Data (x[n])');

function [a,b] = max_filter(N);
a = 1;
b = ones(N,1)/N;
end