%% Working with Cell Arrays as Output
%The following code loads and displays data for this activity.
load fleetData.mat
fleetData
%% Task 1
varNames = fleetData.Properties.VariableNames
%% Task 2
fleetData.Properties.VariableNames = lower(varNames)
%% Task 3
typeNames = categories(fleetData.type)
The following code creates four variables with a list of cars of each type.
suv = {'Audi Q7'; 'Ford Expedition'};
minivan = 'Honda Odyssey';
subcompact = 'Toyota Prius';
compact = {'Toyota Corrolla';'Volkswagen Jetta'};
%% Task 4
labeledCars = [typeNames';{suv minivan subcompact compact}]