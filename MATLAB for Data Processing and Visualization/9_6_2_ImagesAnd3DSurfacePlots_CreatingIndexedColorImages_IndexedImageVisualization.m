%% Indexed Image Visualization
% Instructions are in the task pane to the left. Complete and submit each task one at a time.
% This code creates a 2D surface plot.
x = linspace(-1,1,31);
y = linspace(-1,1,31);
L = membrane;
L(L==0) = nan(nnz(L==0),1);
axs = subplot(1,2,1);
s = pcolor(x,y,L);
axim = subplot(1,2,2);
%% Task 1
im=imagesc([-1 1],[-1 1],L)
%% Task 2
axis xy
%% Task 3
s.EdgeColor = "none"