%% Create Table with Fleet Information
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code sets up the interaction.
% load carInfo.mat

mk=["Audi";"Ford";"Honda";"Toyota"]
md=["Q7";"Expedition";"Odyssey";"Prius"]
yr=[2018;2018;2018;2018]
tp=categorical(["SUV";"SUV";"minivan";"subcompact"])
whos
%% Task 1     
fleet=table(mk,md,yr,tp)
%% Task 2
fleet = table(mk,md,yr,tp,'VariableNames',{'Make' 'Model' 'Year' 'Type'})
%% Further Practice
fleet.Properties
