Lineer Olmayan Denklem Çözümleri
Regula Falsi , Yer Değiştirme Metodu
altX=2;
ustX=1;
ToleransDegeri=1e-6;
HataToleransi=1e-5;
maxIter=20;

Y_altX=feval('fonk3',altX);
Y_ustX=feval('fonk3',ustX);



for k=1:maxIter
    if Y_altX*Y_ustX>0
    Error='altX ve ustX baslangic degerleri uygun secilmedigi icin yakinsama saglanamadi.'
    break
    end
    dx=Y_ustX*(altX-ustX)/(Y_altX-Y_ustX);
    arananX=ustX+dx;
    altX_arananX=arananX-altX;
    Y_arananX=feval('fonk3',arananX);
    if Y_arananX==0
break
    elseif Y_ustX*Y_arananX>0
        ustX=arananX;
        Y_ustX=Y_arananX;
    else
        altX=arananX;
        Y_altX=Y_arananX;
    end
    dx=min(abs(dx),altX_arananX);
if abs(dx)<ToleransDegeri
'Aranan X sayısı'
arananX
'Hesaplamada yapılan hata miktarı'
hata=abs(ustX-altX)/2
'Bulunan arananX degeri f fonksiyonunu Y_arananX kadar hata ile saglıyor'
Y_arananX=feval('fonk3',arananX)
'Iterasyon sayisi'
k
    break 
end
if abs(Y_arananX)<HataToleransi 
'Aranan X sayısı'
arananX
'Hesaplamada yapılan hata miktarı'
hata=abs(ustX-altX)/2
'Bulunan arananX degeri f fonksiyonunu Y_arananX kadar hata ile saglıyor'
Y_arananX=feval('fonk3',arananX)
'Iterasyon sayisi'
k
    break 
end
end

% 'Aranan X sayısı'
% arananX
% 'Hesaplamada yapılan hata miktarı'
% hata=abs(ustX-altX)/2
% 'Bulunan arananX degeri f fonksiyonunu Y_arananX kadar hata ile saglıyor'
% Y_arananX=feval('fonk3',arananX)
% 'Iterasyon sayisi'
% k


function f=fonk3(x)
f=-2-x+exp(x);
end
