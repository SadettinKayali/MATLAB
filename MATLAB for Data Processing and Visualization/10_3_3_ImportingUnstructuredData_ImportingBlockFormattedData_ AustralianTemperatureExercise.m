%% Australian Temperatures
% This code reads the temperature data.
fid  = fopen("2014temps.txt");
% The first line contains the station number and the number of temperature readings.
s = fgetl(fid)
s = split(s)
nlines = str2double(s{2})
% The second line contains the time for each column.
headers = split(fgetl(fid))
%% Task 1
ncols = numel(headers)
fmtStr = repmat('%f',1,ncols)
%% Task 2
stninfo = textscan(fid,[ '%{yyyyMMdd}D' fmtStr ],nlines)
fclose(fid);
%% Task 3
stn = timetable(stninfo{:},'VariableNames',headers)
Further Practice
stackedplot(stn)