%% Concatenating Tables
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code sets up the activity.
load EPL
whos
%% Task 1
season=[teamInfo games]
%% Task 2
season.PtsGD=results
%% Task 3
results=array2table(results,"VariableNames",["Points","GoalDifference"])
%% Task 4
season = [season results]
%% Task 5
season=removevars(season,"PtsGD")