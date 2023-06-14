%% Basic Hierarchy
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code sets up the activity.
x = (1:13) + rand(1,13);
y = 10+(x-14).^2 - 5*randn(1,13);
xModel = 1:0.2:14;
yModel = 10 + (xModel-14).^2;
fig = figure;
plot(xModel,yModel,"LineWidth",2);
hold on
scatter(x,y,2*y,"filled","MarkerFaceAlpha",0.6,"MarkerEdgeColor","b");
%% Task 1
ax=fig.Children
%% Task 2
p=ax.Children
%% Task 3
sp = p(1)
%% Task 4
spType=sp.Type