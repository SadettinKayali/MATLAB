%% Extracting Data from Tables
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code sets up the interaction.
load fleet.mat
fleet
%% Task 1
models = fleet.Model
%% Task 2
w = fleet.Weight
%% Task 3
fleet.Weight = w*2.2046
%% Task 4
fleet.Area = fleet.Length.*fleet.Width
%% Task 5
data = fleet{:,end-3:end}
m = mean(data)
%% Task 6
idx = fleet.Type == "compact"
smallCars = fleet{idx,["Make" "Model"]}