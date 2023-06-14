%% Surface Plot Properties
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code sets up the intial surface plot.
x = 0:0.2:6;
y = 0:0.2:6;
[X,Y] = meshgrid(x,y);
Z = sin(X)+cos(Y);
s = surf(X,Y,Z);
%% Task 1
s.EdgeColor="none"
%% Task 2
s.EdgeColor = "w"
s.LineStyle = ":"
%% Task 3
s.FaceColor = "interp"
%% Task 4
s.CData = zeros(size(Z))
%% Task 5
s.CData = X;
s.FaceAlpha = rand