%% Locating Missing Data
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code sets up the activity.
x = [2 NaN 5 3 NaN]
x == NaN
%% Task 1
idx = isnan(x)
%% Task 2
idx = ismissing(x)
%% Task 3
numMissing = nnz(idx)
%% Task 4
xMean = mean(x,"omitnan")
xProd = prod(x,"omitnan")
%% Task 5
x(idx) = 0
%% Task 6
xMean = mean(x)
xProd = prod(x)