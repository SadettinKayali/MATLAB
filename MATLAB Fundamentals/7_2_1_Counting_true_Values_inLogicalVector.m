%% Counting true Values
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code creates the data and defines the logical vectors.
load results
homewinning = homeWins > homeLosses;
awaywinning = awayWins > awayLosses;
whos
%% Task 1
hwLast10 = any(homewinning(end-9:end))
%% Task 2
hwTop10 = all(homewinning(1:10))
%% Task 3
numHomeLosing = nnz(~homewinning(1:10))
%% Task 4
strongAtHome = nnz(homeLosses < 3)
%% Further Practice
moreHomeWins = homeWins > awayWins 
moreHWTop10 = all(moreHomeWins(1:10))
numLast10 = nnz(moreHomeWins(end-9:end))
