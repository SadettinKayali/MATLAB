%% Lineer Olmayan denklem çözümleri
%% Bisection Method (İkiye Bölme Methodu)
altX=-2;
ustX=1;
ToleransDegeri=1e-4;

Y_altX=feval('fonk2',altX);
Y_ustX=feval('fonk2',ustX);

if Y_altX*Y_ustX>0
    'altX ve ustX baslangic degerleri uygun secilmedigi icin yakinsama saglanamadi.'
end
maxIter=1+round((log(ustX-altX)-log(ToleransDegeri))/log(2));
for k=1:maxIter
    arananX=(altX+ustX)/2;
    Y_arananX=feval('fonk2',arananX);
    if Y_arananX==0
        alX=arananX;
        ustX=arananX;
    elseif Y_ustX*Y_altX>0
        ustX=arananX;
        Y_ustX=Y_arananX;
    else
        altX=arananX;
        Y_altX=Y_arananX;
    end
if (ustX-altX)<ToleransDegeri
end
end
'Aranan X sayısı'
arananX=(ustX+altX)/2
'Hesaplamada yapılan hata miktarı'
hata=abs(ustX-altX)
'Bulunan arananX degeri f fonksiyonunu Y_arananX kadar hata ile saglıyor'
Y_arananX=feval('fonk2',arananX)
'Iterasyon sayisi'
k
function f=fonk2(x)
f=x^2-exp(x);
end