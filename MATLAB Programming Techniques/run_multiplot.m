%% Run Your Function
% Calling with four inputs
% This works correctly.
x1 = linspace(0,2*pi,51);
x2 = linspace(0,2*pi,25);
y1 = sin(x1);
y2 = cos(x2);

multiplot(x1,y1,x2,y2)
%% Calling with varying inputs
% These calls to multiplot currently error, but you will fix in this activity.
multiplot(x1,y1,"r")

x3 = linspace(0,2*pi,50);
y3 = sin(3*x3);
multiplot(x1,y1,x2,y2,x3,y3)

multiplot(x1,y1,"r:",x2,y2,x3,y3,"k*--")