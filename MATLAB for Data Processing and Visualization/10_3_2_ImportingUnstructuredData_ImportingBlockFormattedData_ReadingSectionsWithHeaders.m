%% Elements
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code opens a file. You can see the file structure. in the other tab.
fid = fopen("elements.txt")
%% Task 1
data = textscan(fid,"%q%f","HeaderLine",3)
elements = data{1}
%% Task 2
frewind(fid)
period1 = textscan(fid,"%q%f",2,"HeaderLines",3)
e1 = period1{1}
%% Task 3
period2 = textscan(fid,"%q%f",8,"HeaderLines",2)
e2 = period2{1}