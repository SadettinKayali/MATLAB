% Probability that n random numbers will exceed a given value
% n is the total number of random numbers.
% thresh is the threshold value.
% dist is the type of distribution.  It can be set to uniform or normal.
% Nexp is the number of experiments to perform.
% p is the proportion of numbers that exceed the specified threshold.
% Examples
% p = threshsim(10,6,"uniform",100)
% p = threshsim(10,6,"uniform")
% p = threshsim(10,6)
% p = threshsim(10,6,[],100)
function p = threshsim(n,thresh,dist,Nexp)

% TASKS 1 - 3:
% ENTER TASKS 1 - 3 CODE HERE:
if nargin < 4
    Nexp = 1000;
end
if nargin < 3 || isempty(dist)
    dist = "uniform";
end








% Generate random numbers
switch dist
    case "uniform"
        x = rand(n,Nexp);
    case "normal"
        x = randn(n,Nexp);
end
% Calculate the proportion of simulations
% where the sum exceeds the threshold
p = sum(sum(x) > thresh)/Nexp;

end
