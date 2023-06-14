%% Update Table Variable Names
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code sets up the activity.
teamInfo = readtable("EPLteams.csv","TextType","string")
teamInfo.Properties.VariableNames
%% Task 1
orig = teamInfo.Properties.VariableDescriptions{2}
%% Task 2
teamInfo.Properties.VariableNames{2} = 'Payroll'