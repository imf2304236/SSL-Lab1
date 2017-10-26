clear
close all
%% Problem 1
v1A = [1 2 3 4 5]
v1B = [3 -1 2]'
v1C = 0:0.1:10
v1D = 10:-0.1:0

% Old Code:
% vector1D = fliplr(v1C);

%% Problem 2
v2A = [4 2 5];
v2B = [3 8 9];
magV2A = norm(v2A);
magV2B = norm(v2B);
dotV2 = dot(v2A, v2B);
magV2C = dotV2/(magV2A*magV2B)
thetaV2C = acos(v2C)

% Old Code:
% magV2A = sqrt(v2A(1)^2 + v2A(2)^2 + v2A(3)^2);
% magV2B = sqrt(v2B(1)^2 + v2B(2)^2 + v2B(3)^2);
% dotV2 = v2A(1) * v2B(1) + v2A(2) * v2B(2) + v2A(3) * v2B(3);
% thetaV2 = acosd(dotV2/(magV2A*magV2B));

%% Problem 3
k = 0:100;
sum3A = sum(k)
sum3B1 = sum(k.^2)

% Old Code:
% sum3A = 0;
% sum3B = 0;
% for i=0:100
%     sum3A = sum3A + i;
%     sum3B = sum3B + i^2;
% end

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

% Old Code:
% w = 0:0.001:1000;
% RC = 10;
% H = 1./sqrt(1+(w*RC).^2);
% figure 'Name' 'Problem 7a'
% plot(w,H);
% figure 'Name' 'Problem 7b'
% A = 20*log10(H);
% plot(w,A);
% ax = gca;
% ax.XScale = 'log';

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
