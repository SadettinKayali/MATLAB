%% Finding true Values
%Instructions are in the task pane to the left. Complete and submit each task one at a time.
%This code loads the data.
load results
whos
table(Team,homeWins,homeDraws,homeLosses,awayWins,awayDraws,awayLosses)
%This code defines the logical vectors.
homewinning = homeWins > homeLosses;
awaywinning = awayWins > awayLosses;
homewinningonly = homewinning & ~awaywinning;
%% Task 1
place=find(homewinningonly)
%% Task 2
last3HW = find(homewinning,3,"last")
last3AW = find(awaywinning,3,"last")
%% Further Practice
betteraway = awaywinning & ~homewinning


