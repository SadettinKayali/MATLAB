%% Get random points at fixed distance
% n is the number of points
% r is the distance
% vargin allows you to specify the center as a vector or as a list of scalars
% [x,y] are the x and y values of the points.  If only one output is requested, it is a 2-column matrix with the x and y values in the first and second columns respectively.
%% Examples
% xy = fixeddistpoints(n,1,[1,2])
% [x,y] = fixeddistpoints(n,1,[0 0])
function varargout = fixeddistpoints(n,r,varargin)

% Get center point
% Was it given as a vector or multiple scalars?
ndim = numel(varargin);
if ndim == 1
    % One input for x0 => vector
    x0 = varargin{1};
    ndim = numel(x0);
else
    % Multiple inputs => scalars
    x0 = cat(2,varargin{:});
end

% Generate random points
x = randn(n,ndim);
% Normalize to lie on a sphere
x = x0 + r*x./vecnorm(x,2,2);

% TASK 1:
% ENTER TASK 1 CODE HERE:
if nargout > 1
    varargout = mat2cell(x,n,ones(1,ndim));
else
    varargout{1} = x;
end

end
