%% Matematiksel Fonksiyonlar ve Uygulamaları

%%   2*x^3+3*x^2-5*x+7=0
x=linspace(-2,5,100);       % x değeri array aralığı
b=[2 3 -5 7];               % b değeri fonsiyonun kat sayıları
c=polyval(b,x);             % C değeri fonksiyonun hesaplandıktan sonraki değeri
plot(x,c,'k-')
title(' Polinom Fonksiyonu C=2*x^3+3*x^2-5*x+7')
xlabel('x'),ylabel('C(x)')
%% Polinom İşlemleri
%% Polinom Toplamı
% İki polinomun toplamı polinomların katsayılarının toplamına eşittir.

% İki polinomun MATLAB ortamında toplanabilmesi için kat sayıları içeren
% her iki vektörün boyutları aynı olmalıdır.

% A(s)=2*s^3+3*s^2-4*s+7
% B(s)=s^5-3s^3-5*s

A=[0 0 2 3 -4 7];
B=[1 0 -3 0 -5 0];
C=A+B;
% C(s)=A(s)+B(s)=s^5-s^3+3s^2-9s+7

%% Polinom Çarpımı
% Bir polinomun bir sayı ie çarpımı bu polinomun katsayılarının ayrı ayrı
% bu sayı ile çarpılması anlamına gelir.
% K(s)=4*C(s)=4*s^5-4*s^3+12*s^2-36s+28
K=4*C;
% İki polinomun çarpımı için conv komutu kullanılır.
% conv(a,b) : İki ayrı polinomun çarpımında boyutları ve katsayılarının
% boyutları aynı olmak zorunda değildir.

% A(s)=2*s^3+3*s^2-4*s+7
% B(s)=s^5-3s^3-5*s
A=[2 3 -4 -7];
B=[1 0 -3 0 -5 0];
C=conv(A,B)
% C(s)=A(s)+B(s)=2*s^8+3*s^7-10*s^6-2*s^5+2s^4-36*s^3+20*s^2-35*s
%% Polinom Bölümü
% [q,r]=deconv(a,b) : q bölüm, r kalan , a ve b boyutları aynı olmak zorunda değildir.

% A(s)=2*s^3+3*s^2-4*s+7
% B(s)=s^5-3s^3-5*s
A=[2 3 -4 -7];
B=[1 0 -3 0 -5 1];
[q,r]=deconv(B,A)
% C(s)=B(s)/A(s)    [q,r]=[bölüm,kalan]
% C(s)= 0.5*s^2 -0.75*s +0.625 + (-1.375*s^2 -7.75*s 4.375)/(2*s^3+3*s^2-4*s+7)
% C(s)= q(s)+r(s)/A(s)

%% Polinom Türevi
% polyder(A) : Tek bir dizinin türevi alınır
A=[2 3 -4 -7];
B=[1 0 -3 0 -5 1];
Ader=polyder(A)
Bder=polyder(B)
%polyder(A,B) : İki dizinin çarpımının türevi alınır
A=[2 3 -4 7];
B=[1 0 -3 0 -5 1];
Cder=polyder(A,B)
% Ctürev=16*s^7 + 21*s^6 - 60*s^5 - 10s^4 + 8*s^3 - 102*s^2 + 46*s - 39
%polyder(A,B) : İki dizinin çarpımının türevi alınır
A=[2 3 -4 7];
B=[1 0 -3 0 -5 1];
[q,r]=polyder(A,B)

%% Polinom Köklerinin Bulunması
A=[1 8 16];
C=roots(A)

A=[1 -2 -3 10];
C=roots(A)
%% Polinom köklerini kulllanarak polinom elde edilmesi
s=[-4 -4];
C=poly(s)

s=[2 1-i 1+i];
C=poly(s)

%% Kesirli polinomların köklerinin bulunması
% n>m
% [c,k]=residue(b,a)
a=[1 -4];
b=[1 4 3 1];
[n d]=residue(a,b)
% m=>n
a=[1 0 -3 -2];
b=[5 -1];
[c k q]=residue(a,b)

% 
b=[1 0 2 -4];
a=[1 4 -2];
[c,r,q]=residue(b,a)

%% Kök, residue ve kalan polinom katsayıları verildiğimde kesirli polinomun elde edilmesi
% [b,a]=residue(c,k,q)  : 
% b: pay polinomunun katsayılarını içeren vektör,
% a: payda polinomunun katsayılarını içeren vektör 
% c: P(s)/A(s) ifadesindeki residue değerleri
% k: P(s)/A(s) ifadesindeki kök değerleri
% q: Q(s) polinomunun katsayılarını gösteren vektördür.

% H(s)= (B(s))/(A(s)) = Q(s)+ (P(s))/(A(s))

c=[20.6145,-0.6145];
r=[-4.4495,0.4495];
q=[1,-4];

[b,a]=residue(c,r,q)