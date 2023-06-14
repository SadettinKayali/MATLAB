%% Leading and Trailing Windows
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code sets up the activity.
x = 0:0.2:6
y = sin(x)
plot(x,y,"o-")
%% Task 1
trail4med = smoothdata(y,"movmedian",[3,0])
%% Task 2
hold on
plot(x,trail4med,".-")
hold off
%% Task 3
lead4med = smoothdata(y,"movmedian",[0,3])
%% Task 4
hold on
plot(x,lead4med,".-")
hold off