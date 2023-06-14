% Run Your Function
% Calling with four inputs
% This works correctly.
rng(123)
x1 = -1 + randn(20,1);
y1 = -2 + randn(20,1);
x2 = 2 + randn(50,1);
y2 = 1 + randn(50,1);
[xall,yall,colors] = multiscatter(x1,y1,"r",x2,y2,"b")


% Calling with varying inputs
% These calls to multiscatter currently error, but you will fix in this activity.
[xall,yall,colors] = multiscatter(x1,y1,"r")


x3 = 3 + randn(50,1);
y3 = 2 + randn(50,1);
[xall,yall,colors] = multiscatter(x1,y1,"r",x2,y2,"b",x3,y3,"c")


% Further Practice



