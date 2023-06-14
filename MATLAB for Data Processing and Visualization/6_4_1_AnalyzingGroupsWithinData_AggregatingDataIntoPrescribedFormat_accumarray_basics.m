%% Using accumarray
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code sets up the activity.
price = [2 5 1 4 2 2.5 3 6]';
size = ["small" "large" "small" "medium" "medium" "small" "medium" "large"]'
color = ["red" "red" "yellow" "red" "yellow" "red" "yellow" "red"]'
[g1,gsize] = findgroups(size)
[g2,gcolor] = findgroups(color)
%% Task 1
sumPrice=accumarray([g1,g2],price)
%% Task 2
avgPrice=accumarray([g1,g2],price,[],@mean)