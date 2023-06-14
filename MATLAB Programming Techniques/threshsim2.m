%% Probability that n random numbers will exceed a given value
% n is the total number of random numbers.
% thresh is the threshold value.
% dist is the type of distribution.  It can be set to uniform or normal.
% Nexp is the number of experiments to perform.
% p is the proportion of numbers that exceed the specified threshold.
% Examples
% % p = threshsim(10,6,"uniform")
% % p = threshsim(10,6,"unif")
% % p = threshsim(10,6,"norm")
function p = threshsim2(n,thresh,dist,Nexp)
% Set default values
if nargin < 4
    Nexp = 1000;
end
if (nargin < 3) || isempty(dist)
    dist = "uniform";
end

% TASK 1:
% ENTER TASK 1 CODE HERE:
dist = validatestring(dist,["uniform","normal"]);



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
