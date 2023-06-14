%% Find and Merge Categories
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code sets up the activity.
x = categorical(["medium" "large" "large" "red" "small" "red" "medium"])
%% Task 1
c=categories(x)
%% Task 2
sz=setdiff(c,"red")
%% Task 3
x = mergecats(x,sz,"size")