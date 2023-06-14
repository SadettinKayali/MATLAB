%% Lineer Olmayan Denklem Çözümleri
% Secant Metodu
toleransDelta=1e-6;
toleransEpsilon=1e-5;
maxIter=20;
% x01=input('Baslangıc Degeri Gir: x01=')
% x02=input('Baslangıc Degeri Gir: x02=')

x01=-1;
x02=0;
for k=1:maxIter
    xI=feval('fonk5',x02);
    x1=x02-feval('fonk5',x02)*(x01-x02)/(feval('fonk5',x01)-feval('fonk5',x02));
    hata=abs(x1-x02);
    hataTek=2*hata/(abs(x1)+toleransDelta);
    x01=x02;
    x02=x1;
    y=feval('fonk5',x02);
    if (hata<toleransDelta)|(hataTek<toleransDelta)|(abs(y)<toleransEpsilon)
        break
    end
end
'Aranilan Kok Degeri'
x1
'Bulunan x1 degeri f fonksiyonunu y kadar hata ile sagliyor'
y
'Iterasyon Sayisi'
k
function f=fonk5(x)
f=3-2*x-exp(-x); % f fonksiyonu
end