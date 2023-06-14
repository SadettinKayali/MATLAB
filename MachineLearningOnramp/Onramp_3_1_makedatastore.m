%% Make a Datastore
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
%% Task 1
letterds = datastore("_M_.txt")
%% Task 2
data=read(letterds)
%% Task 3
plot(data.X,data.Y)
%% Task 4
data = read(letterds)
plot(data.X,data.Y)
%% Task 5
data = readall(letterds)
plot(data.X,data.Y)