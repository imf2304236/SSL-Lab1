clear
close all
%% Problem 1
v1A = [1 2 3 4 5]
v1B = [3 -1 2]'
v1C = 0:0.1:10
v1D = 10:-0.1:0

%% Problem 2
v2A = [4 2 5];
v2B = [3 8 9];
magV2A = norm(v2A);
magV2B = norm(v2B);
dotV2 = dot(v2A, v2B);
magV2C = dotV2/(magV2A*magV2B)
thetaV2C = acos(v2C)

%% Problem 3
k = 0:100;
sum3A = sum(k)
sum3B1 = sum(k.^2)

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
t = linspace(0,2,360);
figure 'Name' 'Problem 6a (2Hz)'
y1 = cos(2*pi*f(1)*t);
plot(t, y1);
figure 'Name' 'Problem 6b'
plot(t, arrayfun(@prob6, t));

%% Problem 7
figure
s= tf('s');
RC = 10;
H = 1/(RC*s+1);
bode(H);

%% Function Definitions
function z = mysum(x,y)
z = x + y;
end

function y = prob6(x)
f1 = 2;
f2 = 5;
if lt(x,1)
    y = cos(2*pi*f1*x);
else
    y = cos(2*pi*f2*x);
end
end
