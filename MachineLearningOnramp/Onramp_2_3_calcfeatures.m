%% Calculate Features
% Instructions are in the task pane to the left. Complete and submit each task one at a time.

% Do not edit. This code loads and preprocesses the data.
letterM = readtable("M.txt");
letterM.X = letterM.X*1.5;
letterM.Time = (letterM.Time - letterM.Time(1))/1000
plot(letterM.X,letterM.Y)
axis equal

%% Task 1
dur = letterM.Time(end)


%% Task 2
aratio = range(letterM.Y)/range(letterM.X)


%% Further Practice
letterJ = readtable("J.txt");
letterJ.X = letter.X*1.5;
letterJ.Time = (letterJ.Time - letterJ.Time(1))/1000
plot(letterJ.X,letterJ.Y)
axis equal
dur = letterJ.Time(end)
aratio = range(letterJ.Y)/range(letterJ.X)

letterV = readtable("V.txt");
letterV.X = letterV.X*1.5;
letterV.Time = (letterV.Time - letterV.Time(1))/1000
plot(letterV.X,letterV.Y)
axis equal
dur = letterV.Time(end)
aratio = range(letterV.Y)/range(letterV.X)

