%% k-Means Clustering
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code loads and displays the data.
load dataX
whos X
% Task 1
grp=kmeans(X,3)
% Task 2
gscatter(X(:,1),X(:,2),grp)

%% Gaussian Mixture Models
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code loads and displays the data.
load data
whos X
% Tasks 1 & 4
mdl = fitgmdist(X,3);
mdl = fitgmdist(X,3,"CovarianceType","diagonal");
% Task 2
grp=cluster(mdl,X)
% Task 3
gscatter(X(:,1),X(:,2),grp)
%% Hierarchical Tree
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code loads the data.
load data
whos X
% Task 1
Z = linkage(X)
% Task 2
dendrogram(Z)
% Task 3
Zcomp = linkage(X,"ward");
dendrogram(Zcomp)
% Task0
Z = linkage(X);
dendrogram(Z)
% Task 1
grp = cluster(Z,"maxclust",3);
parallelcoords(X,"Group",grp)
% Task 2
Y = pdist(X);
c = cophenet(Z,Y)

