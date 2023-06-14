%% Using textscan
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
%% Task 1
fid = fopen("file1.txt")
data = textscan(fid,"%f%f")
%% Task 2
colOne = data{1}
fclose(fid);
%% Task 3
fid = fopen("hurricanes.txt");
data = textscan(fid,"%D%f%f%f%f%f","Delimiter",",","HeaderLines",2)
fclose(fid);
%% Further Practice
table(data{:})