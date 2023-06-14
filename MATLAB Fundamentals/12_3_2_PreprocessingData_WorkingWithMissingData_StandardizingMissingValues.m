%% Standardize Missing Values
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code sets up the activity.
x = [2 NaN 5 3 -999 4 NaN 0 8 -999 3 NaN 8]
%% Task 1
idx = ismissing(x)
%% Task 2
idx = ismissing(x,[NaN -999])
%% Task 3
xnan = standardizeMissing(x,-999)