%% Investigate Features of Misclassified Samples
% Instructions are in the task pane to the left. Complete and submit each task one at a time.

% Do not edit. This code loads the data and a trained kNN model.
load letterdata.mat
load predmodel.mat
traindata
testdata
predLetter
%% Task 1
idx = (traindata.Character == "N") | (traindata.Character == "U");
UorN = traindata(idx,:)

idx = (testdata.Character == "U") & (predLetter ~= "U");
fnU = testdata(idx,:)
%%Task 2
UorN.Character = removecats(UorN.Character);
%% Task 3
UorNfeat = UorN{:,1:end-1};
fnUfeat = fnU{:,1:end-1};
%% Task 4
parallelcoords(UorNfeat,"Group",UorN.Character)
%% Task 5
hold on
plot(fnUfeat(4,:),"k")
hold off
%% Further Practice
parallelcoords(fnUfeat(4,:),"Quantile",0.2)