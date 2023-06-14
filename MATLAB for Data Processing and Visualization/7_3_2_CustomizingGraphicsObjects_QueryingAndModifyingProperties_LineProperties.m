%% Line Properties
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code sets up the activity.
avgWS=[54.2381;0;0;46.7742;53.6;51.9438;67.3738;68.7572;74.6515;65.1258;65.1106;56.0326];
fig = figure;
ax = axes;
p = plot(avgWS,"-d")
%% Task 1
p.Color=[0.9 0.2 0.04]
%% Task 2
p.MarkerFaceColor=[0.1 0.2 0.8]
%% Task 3
p.XData = linspace(0,1,12);