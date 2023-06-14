%% Categorical Operations
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code sets up the activity.
x = ["C","B","C","A","B","A","C"]
This line of code would produce an error.
% histogram(x)
%% Task 1
y=categorical(x)
%% Task 2
whos x y
%% Task 3
cats=categories(y)
%% Task 4
iC = y == "C"
%% Task 5
iNB = y ~= "B"
%% Further Practice
y= iC & iNB