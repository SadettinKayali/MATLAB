%% Export EPL Table
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code sets up the activity.
load EPLtable
EPL
%% Task 1
writetable(EPL ,"EPL2015-16.csv")
%% Task 2
writetable(EPL ,"EPL2015-16.txt","Delimiter","\t")
%% Further Practice
t = readtable("EPL2015-16.csv","TextType","string")