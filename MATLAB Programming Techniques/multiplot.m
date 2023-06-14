%% Plot multiple lines with line specifications
% x1,y1,x2,y2,x3,y3... are the inputs to plot.
% Examples
% multiplot(x1,y1,x2,y2)
% multiplot(x,y,"r")
% multiplot(x1,y1,x2,y2,x3,y3)
% multiplot(x1,y1,"r:",x2,y2,x3,y3,"k*--")
function multiplot(varargin)

% Make plots
figure
p = plot(varargin{:},'LineWidth',2,'Marker','o');

% You do not need to edit this
for k = 1:numel(p)
    % Changing marker colors to lighter version of the line color
    p(k).MarkerFaceColor = min((p(k).Color+1)/2,1);
end

end
