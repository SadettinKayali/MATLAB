%% Figure and Axes Properties
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code sets up the activity.
avgWS=[54.2381;0;0;46.7742;53.6;51.9438;67.3738;68.7572;74.6515;65.1258;65.1106;56.0326]
p = plot(avgWS)
ax = gca;
%% Task 1
fw = ax.FontWeight
%% Task 2
ax.FontWeight="bold"
%% Task 3
ax.XAxisLocation = "top"
%% Task 4
ax.XTick=[1 4 8 12]
%% Task 5
ax.XTickLabel=["Jan","Apr","Aug","Dec"]
%% Task 6
ax.XTickLabelRotation=45