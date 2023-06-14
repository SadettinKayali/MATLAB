%% Lineer Olmayan Denklem Çözümleri
% Fixed Point Iterations , Sabit noktalı ( tek noktalı) İterasyon
x0=input('Başlangıç Değeri Gir: x0=') % Başlangıç koşulu
% x0=-1; % Başlangıç koşulu

tolerans=1e-7;
maxIter=20;
for k=2:maxIter
    xI=feval('fonk4',x0);
    hata=abs(xI-x0);
    hatatek=hata/(abs(xI)+eps);
    if (hata<tolerans)|(hatatek<tolerans)
        'Gerceklesen iterasyon sayısı'
        k
        'Aranan kök değeri'
        xI
        break
    else
        x0=xI;
    end
end

if k==maxIter
    Uyari='maxIter değerindeki iterasyon sayisi asildiği icin iterasyon durduruldu.'
end

function f=fonk4(x)
f=3-exp(-x);
end