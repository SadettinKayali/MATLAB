%% Finding Groups
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code sets up the activity.
y = [true false true false true false];
x = ["a" "c" "b" "b" "a" "b"];
%% Task 1
gnums=findgroups(x)
%% Task 2
[~,gvals] = findgroups(x)
%% Task 3
obscounts  = histcounts(gnums,"BinMethod","integers")
%% Task 4
[grpNums,xVals,yVals] = findgroups(x,y)
%% Task 5
obscounts=histcounts(grpNums,"BinMethod","integers")