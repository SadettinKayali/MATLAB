%% Setting Colors
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code creates a surface plot.
x = 0:0.2:6;
y = 0:0.2:6;
[X,Y] = meshgrid(x,y);
Z = sin(X)+cos(Y);
fig = figure;
s = surf(X,Y,Z);
ax = gca;
%% Task 1
colorbar
%% Task 2
colormap(bone)
%% Task 3
colormap(cool)
%% Task 4
c = ax.CLim
ax.CLim = 1.5*ax.CLim;
%% Task 5
ax.CLim=[0 1]