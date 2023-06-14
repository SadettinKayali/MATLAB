%% Explore Data
%Instructions are in the task pane to the left. Complete and submit each task one at a time.
%This code loads the table data which contains the basketball player data.
load bballData.mat
data
%% Task 1
boxplot(data.height,data.pos)
ylabel("Height (inches)")
%% Task 2
gscatter(data.rebounds,data.points,data.pos)
xlabel("Rebounds")
ylabel("Points Scored")
%% Task 3
gscatter(data.rebounds./data.GP,data.points./data.GP,data.pos)
xlabel("Rebounds per Game")
ylabel("Points Scored per Game")
%% Task 4
gscatter(data.rebounds./data.minutes,data.points./data.minutes,data.pos)
xlabel("Rebounds per Minute")
ylabel("Points Scored per Minute")
%% Further Practice
data{:,8:22} = data{:,8:22}./data.minutes
data.minutes = ...
    data.minutes./data.GP
boxplot(data.rebounds,data.pos)
boxplot(data.points,data.pos)

