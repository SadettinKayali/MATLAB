%% Add a Preprocessing Function
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% Do not edit. This code creates a datastore, imports data, and visualizes it.
letterds = datastore("_M_.txt");
data = read(letterds);
data = scale(data);
plot(data.X,data.Y)
axis equal
plot(data.Time,data.Y)
ylabel("Vertical position")
xlabel("Time")
%% Task 2
preprocds = transform(letterds,@scale)
%% Task 3
data = readall(preprocds)
plot(data.Time,data.Y)
%% Further Practice
%% Tasks 1, 4, & 5
%% Task 1
function data = scale(data)
data.Time = (data.Time - data.Time(1))/1000;
data.X = 1.5*data.X;
end
%% Task 4
function data = scale(data)
data.Time = (data.Time - data.Time(1))/1000;
data.X = 1.5*data.X;
data.X = data.X - mean(data.X);
data.Y = data.Y - mean(data.Y);
end
%% Task 5
function data = scale(data)
data.Time = (data.Time - data.Time(1))/1000;
data.X = 1.5*data.X;
data.X = data.X - mean(data.X,"omitnan");
data.Y = data.Y - mean(data.Y,"omitnan");
end