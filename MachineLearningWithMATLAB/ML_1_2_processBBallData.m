    %% Group and Merge Data
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code imports and formats the tables playerInfo and allStats.
playerInfo = readtable("bballPlayers.txt");
playerInfo=readtable("bballPlayers.xlsx")
positions = ["G","G-F","F-G","F","F-C","C-F","C"];
playerInfo.pos = categorical(playerInfo.pos,positions);
playerInfo = rmmissing(playerInfo)
allStats = readtable("bballStats.txt");
allStats(:,19:end) = []
%% Task 1
playerStats = groupsummary(allStats,"playerID","sum")
%% Task 2
playerStats.GroupCount = [];
playerStats.Properties.VariableNames = allStats.Properties.VariableNames
%% Task 3
data=innerjoin(playerInfo,playerStats)