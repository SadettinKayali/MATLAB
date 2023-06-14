%% Subsets of the EPL Data
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code sets up the activity.
EPL = readtable("EPLresults.csv","TextType","string");
EPL = sortrows(EPL,["HomeWins","AwayWins"],"descend")
%% Task 1
bottomGoals=EPL(end-2:end,["HomeGF" "AwayGF"])
%% Task 2
EPL(:,["HomeGF" "HomeGA"]) = []
%% Task 3
EPL = removevars(EPL,["AwayGF" "AwayGA"])
%% Task 4
EPL = EPL(:,[1 2 5 3 6 4 7])
%% Further Practice
EPL = movevars(EPL,"Team",...
    "After","AwayLosses")