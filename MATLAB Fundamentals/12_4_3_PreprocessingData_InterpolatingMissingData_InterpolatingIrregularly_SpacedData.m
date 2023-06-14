%% Fill Missing Values with Unequal Spacing
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code sets up the activity.
x = [0 2 3 4 7 9 10 12 15];
y = [0 NaN 7 8 NaN 2 -3 NaN -8];
plot(x,y,"o")
%% Task 1
z=fillmissing(y,"linear")
%% Task 2
hold on
plot(x,z,"x-")
hold off
%% Task 3
z = fillmissing(y,"linear","SamplePoints",x)
%% Task 4
hold on
plot(x,z,"x-")
hold off