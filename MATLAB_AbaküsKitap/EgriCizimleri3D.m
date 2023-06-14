%% Üç boyutlu eğri çizim komutları
x=-2:0.1:2;
y=-1:0.1:2;
[X,Y]=meshgrid(x,y);
Z=Y.*exp(-(X.^2+Y.^2));
%%
figure(1)
subplot(2,2,1)
mesh(X,Y,Z)
title('mesh komutu ile çizim')
xlabel('x');ylabel('y');zlabel('z');
subplot(2,1,2)
surf(X,Y,Z)
title('surf komutu ile çizim')
xlabel('x');ylabel('y');zlabel('z');
%% 
figure(2)
c=contour(x,y,Z);
clabel(c);
title('contour komutu ile çizim')
xlabel('x');ylabel('y');zlabel('z');
%%
figure(3)
meshc(x,y,Z)
title('meshc komutu ile çizim')
xlabel('x');ylabel('y');zlabel('z');