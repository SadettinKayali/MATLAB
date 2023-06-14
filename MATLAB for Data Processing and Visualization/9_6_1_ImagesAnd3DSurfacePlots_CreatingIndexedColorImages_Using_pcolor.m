%% Using pcolor and imagesc
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code creates a grid.
x = -1:0.1:1;
y = -1:0.1:1;
[X,Y] = meshgrid(x,y);
Z = X.^2 + Y.^2;
%% Task 1
s=pcolor(X,Y,Z)
%% Task 2
s.EdgeAlpha = 0.2;
s.FaceColor = "interp";
%% Task 3
im = imagesc(Z);
%% Task 4
im2 = imagesc([-1 1],[-1 1],Z);