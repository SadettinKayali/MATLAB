%% Create Tables from Variables
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code sets up the activity.
load data
team
w
WDL

%% Task 1
teamWins=table(team,w)
%% Task 2
stats=array2table(WDL)
%% Task 3
stats = array2table(WDL,"VariableNames",["Wins" "Draws" "Losses"])
%% Further Practice


