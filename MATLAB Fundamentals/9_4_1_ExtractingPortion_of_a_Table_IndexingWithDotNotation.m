%% Using Dot Notation
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code sets up the activity.
EPL = readtable("EPLresults.csv","TextType","string");
EPL = sortrows(EPL,["HomeWins" "AwayWins"],"descend")
%% Task 1
hw = EPL.HomeWins
%% Task 2
avgHW = mean(hw)
avgAW = mean(EPL.AwayWins)
%% Task 3
avgTopHD = mean(EPL.HomeDraws(1:4))
avgBotHD = mean(EPL.HomeDraws(end-3:end))
%% Task 4
homeAdvantage = EPL.HomeWins>EPL.AwayWins
hmAdvNum = nnz(homeAdvantage)
%% Further Practice
hold on
plot([1 12],[1 12])
hold off