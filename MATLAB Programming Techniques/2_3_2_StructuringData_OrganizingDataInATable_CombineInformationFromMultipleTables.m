%% Organizing Car Fleet Data
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code sets up the interaction.
load fleet.mat
load fleet2019.mat
load sizeData.mat
whos
%% Task 1
fleet = [fleet; fleet2019]
%% Task 2
fleet = join(fleet,sizeData,"Keys",["Make" "Model"])