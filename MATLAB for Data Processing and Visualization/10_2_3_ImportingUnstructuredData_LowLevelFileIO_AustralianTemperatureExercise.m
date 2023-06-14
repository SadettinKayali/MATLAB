%% Australian Temperatures
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
%% Task 1
fid  = fopen("2014temps.txt");
s = fgetl(fid)
%% Task 2
s = split(s)
nlines = str2double(s{2})
%% Task 3
t = fgetl(fid)
t = split(t)
t = datetime(t,"Format","HHmmss")
%% Task 4
d = fgetl(fid)
d = split(d)
date = datetime(d{1},"InputFormat","uuuuMMdd")
data = str2double(d(2:end))
