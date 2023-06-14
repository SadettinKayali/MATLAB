%% Using Queried Results
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code sets up the activity.
t = linspace(0,2*pi);
t(1) = 0.001;
y1 = sin(t);
y2 = y1.^2;
fig = figure;
ax1 = axes;
l1 = plot(t,y1);
axis tight;
ax2 = axes("Position",[.6 .6 .25 .25]);
l2 = plot(ax2,t,y2);
%% Task 1
x = ax1.XLim
%% Task 2
ax2.XLim = x
%% Task 3
y = ax1.YLim
ax2.YLim = y