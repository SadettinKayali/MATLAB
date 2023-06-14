%% Probability that n random numbers will exceed a given value
% n is the total number of random numbers.
% thresh is the threshold value.
% "NumExperiments",Nexp name-value pair sets the number of experiments to perform.
% "Distribution",dist name-value pair sets the type of distribution.  It can be set to uniform or normal.
% p is the proportion of numbers that exceed the specified threshold.
%% Examples
% p = threshsim(10,6)
% p = threshsim(10,6,"NumExperiments",100,"Distribution","normal")
function p = threshsim1(n,thresh,varargin)

% Set default values
Nexp = 1000;
dist = "uniform";

% Parse name-value pairs ("NumExperiments","Distribution")
names = varargin(1:2:end);
values = varargin(2:2:end);
for k = 1:numel(names)
    % TASK 1:
    % ENTER TASK 1 CODE HERE:
    switch names{k}
        case "NumExperiments"
            Nexp = values{k};
        case "Distribution"
            dist = values{k};
    end
    
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
