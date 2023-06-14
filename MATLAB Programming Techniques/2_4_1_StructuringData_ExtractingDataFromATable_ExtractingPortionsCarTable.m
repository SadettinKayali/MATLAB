%% Extracting Portions of a Table
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code sets up the interaction.
load fleet1.mat
fleet
%% Task 1
smallCars = fleet([1 4:end],end-3:end)
%% Task 2
sizes = fleet(:,["Weight", "Length", "Width"])