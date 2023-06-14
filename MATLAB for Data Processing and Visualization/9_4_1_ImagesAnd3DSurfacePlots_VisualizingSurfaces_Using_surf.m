%% Using surf
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code sets up the activity.
x = 0:0.5:6;
y = 0:0.5:6;
[X,Y] = meshgrid(x,y);
%% Task 1
Z = sin(X) + cos(Y)
%% Task 2
surf(X,Y,Z)