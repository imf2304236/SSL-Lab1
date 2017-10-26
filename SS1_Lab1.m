clear
close all
%% Problem 1
v1A = [1 2 3 4 5]
v1B = [3 -1 2].'
v1C = 0:0.1:10
v1D = 10:-0.1:0

%% Problem 2
v2A = [4 2 5];
v2B = [3 8 9];
dotV2 = dot(v2A, v2B);
magV2C = dotV2/(norm(v2A)*norm(v2B))
thetaV2C = acosd(magV2C)

%% Problem 3
sum3A = sum(0:100)
sum3B1 = sum([0:100].^2)

%% Problem 4
arg = -pi/2;
sum4 = arg;
summand = arg;
i = 2;
while abs(summand) > 10^-8
    power = i*2-1; 
    summand = (-1)^(i-1)*(arg)^(power)/factorial(power);
    sum4 = sum4 + summand;
    i = i + 1;
end
sum4

%% Problem 5
sum5 = mysum(2,3)

%% Problem 6
f = [2 5];
t1 = linspace(0,1,360);
t2 = linspace(1,2,360);

y1 = cos(2*pi*f(1)*t1);
y2 = cos(2*pi*f(1)*t2);

t = [t1, t2];
y = [y1, y2];

figure 'Name' 'Problem 6a (2Hz)'
plot(t, y);

figure 'Name' 'Problem 6b'
y3 = cos(2*pi*f(1)*t1);
y4 = cos(2*pi*f(2)*t2);

t = [t1, t2];
y = [y3, y4];

plot(t, y);

%% Problem 7
figure 'Name' 'Problem 7'
s = tf('s');
RC = 10;
H = 1/(RC*s+1);
bode(H, {0, 1000});

%% Function Definitions
function z = mysum(x,y)
z = x + y;
end
