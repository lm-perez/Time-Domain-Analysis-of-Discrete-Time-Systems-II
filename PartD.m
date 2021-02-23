%D

n = (0 : 20);
a = [1 -3/10 -1/10]; % Denominator
b = [2 0 0]; % Numerator
y = [1 2]; % Initial Conditions
z = zeros(size(n)); % Zeros

z_i = filtic(b,a,y);
y_0 = filter(b,a,z,z_i); %from B

u =@(n) 1*(n>=0); 
x = @(n) 2.*cos((2*pi.*n)/6).*(u(n)-u(n-10));
y_1 = filter(b,a,x(n));  %from C

y_total = filter(b,a,x(n),z_i); %1
y_add = y_1 + y_0; %2

figure;
sgtitle('Total Response');

%1)
subplot(2,1,1); stem(n,y_total); grid minor;
xlabel('n');ylabel('y_{total}[n]'); title('y_{total}[n]');

%2
subplot(2,1,2);stem(n,y_add); grid minor;
xlabel('n');ylabel('y_{1}[n] + y_{0}[n]');title('y_{1}[n] + y_{0}[n]');

%2)

%The total response can be found by adding the zero state response and the 
%zero input response. This is proven in the plots as they are identical.
