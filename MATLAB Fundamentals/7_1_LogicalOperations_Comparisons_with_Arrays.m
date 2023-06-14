%% Comparisons with Arrays
% Instructions are in the task pane to the left. Complete and submit each task one at a time.

% This code creates the matrices x and y and vectors u and v.
rng(0);
x = randi(20,3,5)
y = randi(20,3,5)
u = randi(20,3,1)
v = randi(20,1,5)
%% Task 1
z=x>8
%% Task 2
z2=x<y
%% Task 3
z3=z & z2
%% Task 4
w = (x > 12) | (y >= 6)
%% Task 5
a=x>=v
%% Task 6
b = a & (u > 8)
%% Further Practice
u >= v
col = (u > 8)
row = (v < 10)
col | row