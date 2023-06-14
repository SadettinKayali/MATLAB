% Create a multiplication table
% n is a numeric vector
% M is a matrix of the integers 1 through n(1) multiplied by the integers 1 through n(2).  If n is a scalar, M is a square matrix of the integers 1 through n multiplied by the integers 1 through n.
% Examples
% M = multtable(6,4)
% M = multtable(4)
% M = multtable
function M = multtable(m,n)

% TASKS 1 AND 2:
% ENTER TASKS 1 AND 2 CODE HERE:
if nargin < 1
    m = 12;
end

if nargin < 2
    n = m;
end

% Calculate table
M = (1:m)' .* (1:n);
end

