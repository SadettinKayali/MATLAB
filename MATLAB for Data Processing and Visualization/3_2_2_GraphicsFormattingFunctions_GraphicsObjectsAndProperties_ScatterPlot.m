%% Scatter Plot Properties
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code sets up the activity.
rng(0)
x = (1:13) + rand(1,13);
y = 10+(x-14).^2 + 5*rand(1,13);
scatter([4 5 6 7],[9 11 13 15]);
%% Task 1
scatter([4 5 6 7],[9 11 13 15],[25 50 75 100]);
%% Task 2
scatter(x,y,10*x)
%% Task 3
scatter(x,y,10*x,"rs")
%% Task 4
scatter(x,y,10*x,"rs","filled")
%% Task 5
scatter(x,y,10*x,"rs","filled","MarkerFaceAlpha",0.5)