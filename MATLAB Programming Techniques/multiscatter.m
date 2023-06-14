%% Create scatter plot for vectors in specified colors
% x1,y1,c1,x2,y2,c2,x3,y3,c3... are the inputs to plot along with the corresponding color.
% x is a cell array of the vectors that make up the x-data.
% y is a cell array of the vectors that make up the y-data.
% c is a cell array of the colors to plot the respective data.
function [x,y,c] = multiscatter(varargin)

% Collect cell arrays of x, y, and c
x = varargin(1:3:end);
y = varargin(2:3:end);
c = varargin(3:3:end);

% Make plots
figure
hold on
for k = 1:numel(x)
    scatter(x{k},y{k},50,c{k},"filled","MarkerFaceAlpha",0.5)
end
hold off
end
