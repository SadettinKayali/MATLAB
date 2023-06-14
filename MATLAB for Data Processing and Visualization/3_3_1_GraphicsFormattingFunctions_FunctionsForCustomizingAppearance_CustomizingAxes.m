%% Customizing Axes
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code sets up the activity.
rng(100);
x1 = (1:13) + rand(1,13);
y1 = 10+(x1-14).^2 + 5*rand(1,13);
%% Task 1
scatter(x1,y1,y1)
%% Task 2
xlim([0.5 8])
%% Task 3
grid on
%% Task 4
grid minor
%% Task 5
axis square