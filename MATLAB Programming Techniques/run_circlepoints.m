%% Run Your Function
% Calling with two outputs
% This works correctly.
rng(123)
[x,y] = circlepoints(100);
scatter(x,y)

%% Calling with one output
% This currently returns only the x values, but you will fix it.
M = circlepoints(100)