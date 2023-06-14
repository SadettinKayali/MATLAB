%% Access Table Properties
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code sets up the activity.
EPL = readtable("EPLresults.csv","TextType","string");
EPL = sortrows(EPL,["Points","GoalDifference"],"descend")
teamInfo = readtable("EPLteams.csv")
%% Task 1
EPLprops=EPL.Properties
%% Task 2
varNames = EPL.Properties.VariableNames
%% Task 3
EPL.Properties.Description = "English Premier League results, 2015-16";
%% Task 4
varDes = teamInfo.Properties.VariableDescriptions