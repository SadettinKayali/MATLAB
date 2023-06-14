%% Plotting with datetime Variables
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code sets up the activity.
load EPLtable
EPL(1:4,:)
EPL.ManagerHireDate(1:4)
%% Task 1
EPL=sortrows(EPL,"ManagerHireDate")
%% Task 2
plot(EPL.ManagerHireDate ,EPL.Points ,"*")
%% Task 3
xMin=datetime(2012,7,1)
xMax=datetime(2016,7,1)
%% Task 4
xlim([xMin,xMax])