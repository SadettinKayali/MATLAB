%% Using Function Handles in Optimization
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code sets up the activity.
x = -1:0.01:1;
plot(x,humps(x))
grid on
%% Task 1
x0 = fzero(@humps,0)
%% Task 2
xMin = fminbnd(@humps,0.3,1)