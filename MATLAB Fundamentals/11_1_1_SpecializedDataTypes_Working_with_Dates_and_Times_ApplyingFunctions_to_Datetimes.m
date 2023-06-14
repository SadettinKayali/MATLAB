%% datetime Variables
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code sets up the activity.
load data
manU(1:4,:)
manU.GameTime(1:4)
%% Task 1
manU=sortrows(manU,"GameTime")
%% Task 2
ptsTot=cumsum(manU.Points)
%% Task 3
plot(manU.GameTime  ,ptsTot )
