%% Index into Cell Arrays
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code sets up the activity.
regions = { 'South America' 'Europe' ; 'Argentina' {'England' ; 'Italy' ; 'Netherlands'} }
%% Task 1
col1 = regions(:,1)
%% Task 2
ec = regions{2,2}
%% Task 3
ec{2} = 'Spain'