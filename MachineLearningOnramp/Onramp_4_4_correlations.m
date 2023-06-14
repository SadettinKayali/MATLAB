%% Calculating Correlations
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
%Do not edit. This code loads and plots the data.
load sampleletters.mat
plot(v2.X,v2.Y,"o-")
%% Task 1
C=corr(v2.X,v2.Y)
%% Task 2
C=corr(v2.X,v2.Y,"Rows","complete")
%% Task 3
M = [v2.X(1:11) v2.Y(1:11) v2.X(12:22) v2.Y(12:22)]
%% Task 4
Cmat=corr(M,"Rows","complete")
%% Further Practice
