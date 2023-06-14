%% Operations on Logical Arrays
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code creates the numeric matrix x and the logical matrix x5.
rng(0)
x = randi(20,3,4)
x5 = x > 5
%% Task 1
bigcol=all(x5)
%% Task 2
bigrow=all(x5,2)
%% Task 3
totalbig=nnz(x5)
%% Task 4
colsum=sum(x5)
%% Task 5
twoorthree = 3 - x5
%% Further Practice
all(bigrow.*bigcol)
any(bigrow.*bigcol)
(bigrow.*bigcol)
