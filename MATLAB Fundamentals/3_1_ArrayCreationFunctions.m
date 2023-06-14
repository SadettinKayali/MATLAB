% Array Creation Functions
% Instructions are in the task pane to the left. Complete and submit each task one at a time.

%% TASK 1
x=ones(3,4);
%% TASK 2
x=5*ones(3,4);
%% TASK 3
xU=rand(100,1);
%% TASK 4
xN=randn(100,1);
%% TASK 5
xI=randi(10,100,1);
%% TASK 6
xI2=randi([11 20],100,1);
%% TASK 7 
xU2=-1+(1-(-1))*rand(100,1);
%% TASK 8
xN2=100+5*randn(100,1);
%% Further Practice
a = -12;
b = -2;
x = a + (b-a)*rand(1,1000);
histogram(x)
xlim([-25 25])
title('Uniformly Distributed Random Numbers')

M = 15;
s = 11;
x = M + s*randn(1,1000);
histogram(x)
xlim([0 50])
title('Normally Distributed Random Numbers')
