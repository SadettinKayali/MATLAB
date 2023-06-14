%% Using sortrows
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
%% Task 1
EPL = readtable("EPLresults.csv","TextType","string")
%% Task 2
winners = sortrows(EPL,"HomeWins")
%% Task 3
winners = sortrows(EPL,"HomeWins","descend")
%% Task 4
winners = sortrows(EPL,["HomeWins" "AwayWins"],"descend")