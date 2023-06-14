%% Using griddata
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code sets up the activity.
xdata = randn(100,1);
ydata = randn(100,1);
zdata = xdata.^2 + ydata.^2;
%% Task 1
x = 0:3
y = -1:1
[X,Y] = meshgrid(x,y)
%% Task 2
Z=griddata(xdata,ydata,zdata,X,Y)