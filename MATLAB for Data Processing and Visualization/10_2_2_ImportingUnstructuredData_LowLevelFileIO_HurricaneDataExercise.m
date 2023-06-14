%% Hurricane Data
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% Task 1
fid = fopen("hurricaneData1960.txt")
info = fgetl(fid)
%% Task 2
M = extractBetween(info,"M =","SNBR")
%% Task 3
M = str2double(M)
%% Task 4
SNBR = extractAfter(info,"SNBR =")
SNBR = str2double(SNBR)
%% Task 5
headers = fgetl(fid)
hNames = split(headers)
%% Task 6
wLoc = hNames=="Windspeed"
%% Task 7
data = fgetl(fid)
data = split(data)
windspeed = str2double(data(wLoc))