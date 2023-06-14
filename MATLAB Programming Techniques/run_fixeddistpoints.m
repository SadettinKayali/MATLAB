%% Run Your Function
% Calling with one output
% This works correctly.
rng(123)
xy = fixeddistpoints(300,1,[1,2]);
scatter(xy(:,1),xy(:,2))

%% Calling with two outputs
% This currently errors, but you will fix it.
[x,y] = fixeddistpoints(300,1,[0 0]);
scatter(x,y)