%% Train a Model and Make Predictions
%Instructions are in the task pane to the left. Complete and submit each task one at a time.
%This code loads and displays the normalized (per minute) data set.
load bballTrainingData
data
whos
%% Task 1
knnmodel = fitcknn(dataTrain,"pos");
%% Task 2
predPos = predict(knnmodel,dataTest);
%% Task 3
mdlLoss = loss(knnmodel,dataTest)
%% Task 4
confusionchart(dataTest.pos,predPos);
title("Player Position")