%% Create a multiplication table
% n is a numeric vector
% M is a matrix of the integers 1 through n(1) multiplied by the integers 1 through n(2).  If n is a scalar, M is a square matrix of the integers 1 through n multiplied by the integers 1 through n.
% Examples
% M = multtable([6,4])
% M = multtable(4)
function M = multtable(n)

% TASK 1:
% ENTER TASK 1 CODE HERE:
if isscalar(n)
    n = [n n];
end


% Calculate table
M = (1:n(1))' .* (1:n(2));

end
