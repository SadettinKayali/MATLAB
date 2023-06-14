%% Using splitapply
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code sets up the activity.
x = ["a" "c" "b" "b" "a" "b"]
y = 100:100:600
%% Task 1
grpNum=findgroups(x)
%% Task 2
sumPerGroup = splitapply(@sum,y,grpNum)