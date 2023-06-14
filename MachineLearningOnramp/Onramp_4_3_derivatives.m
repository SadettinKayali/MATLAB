%% Calculating Derivatives
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% Do not edit. This code loads and plots the data.
load sampleletters.mat
plot(m2.Time,m2.X)
grid
%% Task 1
dX=diff(m2.X)
dT=diff(m2.Time)
%% Task 2
dXdT=dX./dT
%% Task 3
plot(m2.Time(1:end-1),dXdT)
%% Task 4
maxdx = max(dXdT)
dYdT = diff(m2.Y)./dT
maxdy = max(dYdT)
%% Task 5
dYdT = standardizeMissing(dYdT,Inf);
maxdy = max(dYdT)
%% Further Practice
xclean = standardizeMissing(dYdT,[-Inf 0 Inf])