%% Reshape a Matrix
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
%% Do not edit. This code creates the matrix A.
rng(0)
A = randi(10,12,2)
%% Task 1
B=reshape(A,8,3)
%% Task 2
C=reshape(A,[],4)
%% Task 3
D=A(:)
%% Task 4
E=reshape(A',1,[])
