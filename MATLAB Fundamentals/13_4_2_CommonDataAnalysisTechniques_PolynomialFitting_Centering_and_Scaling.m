%% Centering and Scaling
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code sets up the activity.
yr = 2000:2007
penguins = [5.49  7.03  7.73  7.70  9.29  9.21  11.89  10.85]
%% Task 1
c = polyfit(yr,penguins,3)
%% Task 2
[c,~,sc] = polyfit(yr,penguins,3)
%% Task 3
penguinFit=polyval(c,yr,[],sc)
%% Further Practice
plot(yr,penguins)
hold on
plot(yr,penguinFit)
legend

[c,S,sc] = polyfit(yr,penguins,3)
[penguinFit,serr] = polyval(c,yr,S,sc)

predInt = penguinFit + 2*[1;-1]*serr
plot(yr,penguins,"o",...
    yr,penguinFit,yr,predInt,"r--")
