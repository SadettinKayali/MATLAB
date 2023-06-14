% The syntax for most plotting functions is similar to plot. 
% You can change the size of the markers by passing a third input to plot types.
% You can provide a fourth input to plot types to specify the marker color.
plot(xData,yData)
plot(xData,yData,markersize)
plot(xData,yData,markersize,"colour")

stairs(xData,yData)
stairs(xData,yData,markersize)
stairs(xData,yData,markersize,"colour")

stem(xData,yData)
stem(xData,yData,markersize)
stem(xData,yData,markersize,"colour")

area(xData,yData)
area(xData,yData,markersize)
area(xData,yData,markersize,"colour")

scatter(xData,yData)
scatter(xData,yData,markersize)
scatter(xData,yData,markersize,"colour")

% You can provide a vector as the fourth input to specify different colors for each marker. Try the following command to create the scatter plot using the Year vector to identify different colors. The colorbar command adds a color bar explaining how colors correspond to years.
% scatter(Australia,Canada,30,Year)
% colorbar
% The scatter documentation provides other optional inputs to customize the plot. For example, this command creates the scatter plot with filled markers.
% scatter(Australia,Canada,30,Year,"filled")
% colorbar
scatter(xData,yData,markersize,ExtraData,"filled")
colorbar