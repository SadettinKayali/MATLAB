%% Data in Multiple Table Variables
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code sets up the activity.
EPL = readtable("EPLresults.csv","TextType","string");
EPL.Points = 3*(EPL.HomeWins + EPL.AwayWins) + (EPL.HomeDraws + EPL.AwayDraws);
EPL = removevars(EPL,["HomeDraws" "HomeLosses" "HomeWins" "AwayDraws" "AwayLosses" "AwayWins"]);
EPL = movevars(EPL,"Points","After",1)
%% Task 1
GF=EPL{:,["HomeGF","AwayGF"]}
%% Task 2
avgGF=mean(GF)
%% Task 3
totGF=sum(GF,2)
%% Task 4
GA = EPL{:,["HomeGA" "AwayGA"]}
avgGA = mean(GA)
totGA = sum(GA,2)
%% Task 5
EPL{:,["TotalGF" "TotalGA"]} = [totGF totGA]
%% Task 6
GD = totGF-totGA;
EPL.GoalDiff = GD
%% Task 7
EPL = movevars(EPL,"GoalDiff","After","Points");
EPL = sortrows(EPL,["Points" "GoalDiff"],"descend")
%% Further Practice
EPL{:,[2 3 end]}
EPL{:,1:3}