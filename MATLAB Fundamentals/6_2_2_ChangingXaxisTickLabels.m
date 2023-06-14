%% Electricity Usage
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
%% This code sets up the activity.
load electricity
monthly = mean(usage,2);
bar(mth(1:3:end),monthly(1:3:end))
%% Task 1
list = ["January" "April" "July" "October"];
xticklabels(list)
%% Tasks 2 & 3
bar(monthly)
xticks(1:3:12)
xticklabels(list)
%% Further Practice
xticks(1:12)
xticklabels(allMonths)
xtickangle(15)