%% Objects that are Axes Properties
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code sets up the activity.
rng(123)
x = (1:13) + rand(1,13);
y = 10+(x-14).^2 - 5*randn(1,13);
xModel = 1:0.2:14;
yModel = 10 + (xModel-14).^2;
fig = figure;
lp = plot(xModel,yModel,"LineWidth",2);
hold on
sp = scatter(x,y,2*y,"filled","MarkerFaceAlpha",0.6,"MarkerEdgeColor",lp.Color);
xlabel("Time (seconds)")
ylabel("Size (mm)")
title("Results of a Very Scientific Experiment")
ax = gca;
%% Task 1
ax.FontName="Georgia"
%% Task 2
xLab=ax.XLabel
%% Task 3
xLab.FontName="Garamond"
%% Task 4
yLab=ax.YLabel
yLab.FontName="Garamond"
%% Task 5
ax.YLabel.FontSize=13
%% Task 6
xAx=ax.XAxis
%% Task 7
xAx.TickDirection="out"
%% Task 8
xAx.FontName="Courier"