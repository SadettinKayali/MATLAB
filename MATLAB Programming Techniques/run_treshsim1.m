%% Run Your Function
% Calling with four inputs
% This works correctly.
rng(123)
p = threshsim1(10,6)

%% Calling with three inputs
% This currently gives the wrong result, but you will fix it in this activity.
rng(123)
p = threshsim1(10,6,"NumExperiments",100,"Distribution","normal")

%% Further Practice
p = threshsim1(10,6,...
    "Distribution","normal","Penguins",7)
