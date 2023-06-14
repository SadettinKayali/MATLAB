%% Analysis with EPL Table Data
%Instructions are in the task pane to the left. Complete and submit each task one at a time.
%This code sets up the activity.
EPL = readtable("EPLresults.csv","TextType","string")
%% Task 1
totWins=EPL.HomeWins + EPL.AwayWins
EPL.TotalWins=totWins
%% Task 2
totDraws=EPL.HomeDraws + EPL.AwayDraws
EPL.TotalDraws=totDraws
%% Task 3
EPL.Points = 3*EPL.TotalWins + EPL.TotalDraws;
EPL = sortrows(EPL,"Points","descend");
%% Task 4
EPL = removevars(EPL,["HomeDraws" "HomeLosses" "HomeWins" "AwayDraws" "AwayLosses" "AwayWins"]);
%% Task 5
EPL = movevars(EPL,"Points","After",1)