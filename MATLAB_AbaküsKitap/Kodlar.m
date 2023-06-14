%% 2.8 Sayı ve İfadelerin MATLAB Ekranında Gösterilme Biçimleri
sicaklik=65

% 1) disp()  disp('') komutu
disp(sicaklik)
disp(sicaklik);disp('derece')
% 2) fprinf(' çıkışta gösterilmesi istenenler ', değişkenler)
% %ab.f 
% f= sayının sabit noktalı olduğu anlamına gelir
% a= değişkenin aldığı  tam sayı değeri
% b= değişkenin tam olmayan kısımlarının yazılması istenen miktarı
fprintf(' sicaklik = %4.0f derece',sicaklik)

% pwd : o anda içinde yer alınan kütüğün yeri hakkında bilgi alınır.
% cd : Bu komut ile mevcut kütük değiştirilir.
% dir : O anda içinde bulunan klasör yapısı hakkında bilgiye ulaşılır.
% ls : O anda içinde bulunan klasör yapısı hakkında bilgiye ulaşılır.
% what : O anda içinde bulunan kütük içindeki m ve mat uzantılı dosyalar ekrana gelir.
% delete(dosya adı) : Dosyayı içinde bulunan kütük içinden siler.
% type(dosya adı) : Text olarak yazılmış (.m uzantılı) dosyayı ekrana getirir.
% A=csvread('dosya adı',r,c) : A matrisine aktarılacak veya aktarılmayacak matrisleri açıklar. r row satır c column sütun 
% A=csvwrite('dosya adı',A)
% 
% a=input('giriş değeri')
% disp('...')
% disp(A)
% pause
