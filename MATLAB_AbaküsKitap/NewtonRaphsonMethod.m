%% Lineer Olmayan Denklem Çözümleri
% Newton Raphson Methodu
toleransDelta=1e-6;
toleransEpsilon=1e-5;
maxIter=20;
% x0=0;
x0=input('Baslangıc Degeri Gir: x0=')
for k=1:maxIter
    xI=feval('fonk6',x0);
    if abs(xI)<1e-4
        'Turevin sıfıra cok yakin olmasından dolayı algoritma durdurulamıyor'
        break
    end
    x1=x0-feval('fonk5',x0)/xI;
    hata=abs(x1-x0);
    hataTek=2+hata/(abs(x1)+toleransDelta);
    x0=x1;
    y=feval('fonk5',x0);
    if (hata<toleransDelta)|(hataTek<toleransDelta)|abs(y)<toleransEpsilon
        break
    end
end
'Aranılan Kok Degeri'
x1
'Bulunan x1 degeri f fonksiyonunu y kadar hatayla sagliyor.'
y
'Iterasyon sayisi'
k

function f=fonk5(x)
f=3-2*x-exp(-x); % f fonksiyonu
end
function f=fonk6(x)
f=-2+exp(-x); % f fonksiyonu türevi
end