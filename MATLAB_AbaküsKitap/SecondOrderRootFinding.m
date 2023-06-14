%% İkinci dereceden bir denklemin köklerinin hesaplanması
disp('İkinci Dereceden Denklem : aX^2 + bX + c = 0')
a=input('Denklemin a katsayısını girin, a=');
b=input('Denklemin a katsayısını girin, b=');
c=input('Denklemin a katsayısını girin, c=');
x=-b/(2*a);
delta=sqrt(b^2-4*a*c)/(2*a);
% x1=x+delta;
% x2=x-delta;
% disp('Birinci Kök Değeri : x1='),disp(x1);
% disp('İkinci  Kök Değeri : x2='),disp(x2);
if delta >0
    disp('Reel kök bulunur; \n')
    x1=x+delta;
    x2=x-delta;
    disp('Birinci Kök Değeri : x1='),disp(x1);
    disp('İkinci  Kök Değeri : x2='),disp(x2);
elseif delta==0
    disp('Birbiriene eşit iki kök bulunur;')
    disp('Kök Değeri : x1=x2='),disp(x);
else
    disp('Kompleks kök bulunur; \n')
    x1=x+delta;
    x2=x-1i*delta;
    disp('Birinci Kök Değeri : x1='),disp(x1);
    disp('İkinci  Kök Değeri : x2='),disp(x2);
end