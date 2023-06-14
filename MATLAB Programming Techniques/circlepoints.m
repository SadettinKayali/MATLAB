%% Get random points on the unit circle
% n is the number of points
% [x,y] are the x and y values of the points.  If only one output is requested, it is a 2-column matrix with the x and y values in the first and second columns respectively.
%% Examples
% [x,y] = circlepoints(n)
% M = circlepoints(n)
function [x,y] = circlepoints(n)

% Generate random points
x = randn(n,2);
% Normalize to lie on the circle
x = x./vecnorm(x,2,2);

% TASK 1:
% ENTER TASK 1 CODE HERE:
if nargout > 1
    
    % Split into x and y components
    y = x(:,2);
    x = x(:,1);
    
    
end
end
