%% Evaluate the Model
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% Do not edit. This code loads the data.
load featuredata.mat
knnmodel = fitcknn(features,"Character","NumNeighbors",5);
testdata
%% Task 1
predictions = predict(knnmodel,testdata)
%% Task 2
iscorrect = predictions == testdata.Character
%% Task 3
accuracy = sum(iscorrect)/numel(predictions)
%% Task 4
iswrong = predictions ~= testdata.Character
misclassrate = sum(iswrong)/numel(predictions)
%% Task 5
confusionchart(testdata.Character,predictions);