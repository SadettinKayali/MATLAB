%% Subsets of EPL Table
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code sets up the activity.
EPL = readtable("EPLresults.csv","TextType","string");
EPL = sortrows(EPL,["HomeWins" "AwayWins"],"descend")
%% Task 1
top6=EPL(1:6,:)
%% Task 2
teamWins=EPL(:,[1,2,7])
%% Task 3
top3founders=EPL(2:4,[1,2,3,7,8])
%% Task 4
compareTeams = EPL([1:4 18],[1 2 3 7 8])
%% Task 5
teamsWD = EPL(:,[1 2 7 3 8])
%% Task 6
reverseCompareTeams = teamsWD([18 4:-1:1],:)