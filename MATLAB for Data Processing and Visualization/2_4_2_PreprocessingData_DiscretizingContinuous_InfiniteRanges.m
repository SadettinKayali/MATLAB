%% Infinite Ranges
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code sets up the activity.
binedges = [0 0.2 0.6 0.9];
x = [ 0.90 0.32 0.95 NaN 0.87 0.71 0.42 0.60];
%% Task 1
y=discretize(x,binedges)
%% Task 2
binedges = [0 0.2 0.6 0.9 Inf]
%% Task 3
y=discretize(x,binedges)