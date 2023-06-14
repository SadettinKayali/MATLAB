%% Calculate Basic Statistics
%Instructions are in the task pane to the left. Complete and submit each task one at a time.
% Do not edit. This code loads and plots the data.
load sampleletters.mat
plot(b1.Time,b1.X)
hold on
plot(b2.Time,b2.X)
hold off
plot(b1.Time,b1.Y)
hold on
plot(b2.Time,b2.Y)
hold off

%% Task 1
aratiob = range(b1.Y)/range(b1.X)

%% Task 2
medxb = median(b1.X,"omitnan")
medyb = median(b1.Y,"omitnan")

%% Task 3
devxb = mad(b1.X)
devyb = mad(b1.Y)

%% Task 4
aratiov = range(v1.Y)/range(v1.X)
medxd = median(d1.X,"omitnan")
medyd = median(d1.Y,"omitnan")
devxm = mad(m1.X)
devym = mad(m1.Y)

%% Further Practice
plot(b1.X,b1.Y,b2.X,b2.Y)
axis([-1 1 -1 1])
axis equal
plot(d1.X,d1.Y,d2.X,d2.Y)
axis([-1 1 -1 1])
axis equal