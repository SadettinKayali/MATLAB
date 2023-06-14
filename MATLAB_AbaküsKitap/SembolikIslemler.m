%% MATLAB ortamında Sembolik İşlemler
% help symbolib , symintro

%% Sembolik İşlemler ve Matematik
syms a
b=a^2
%
syms x y reel
pi=sym('pi')
alfa=sym('1/10')
karekok2=sym(sqrt(2))

pi
pi=sym('0.5')

%% Sembolik İfadeler
syms k m A
f=k^3+4*m+5
r=f+2
z=r*exp(f+A)

% findSymType(z)

n=3;
syms x
b=x.^((0:n)'* (0:n))

%% Sembolik İfadelerden Polinom Oluşturulması
% expand()   çarpanları birleştirme çarpma
syms a
A=a+2
B=a-3
C=A*B
D=expand(C)

syms teta fi
A=sin(teta+fi)
AA=expand(A)
B=cos(2*teta)
BB=expand(B)
C=6*sin(teta)^2+6*cos(teta)^2
CC=expand(C)

%% horner()    çarpanlara ayırma iç içe en basite
syms x
p=expand((1+x)^4)
pp=horner(p)

%% factors() çarpanlara ayırma
syms s
D=s^2+6*s+9
DD=factor(D)

P=s^3-2*s^2-3*s+10
factor(P)

%% simplfy()   sabitleştirme

syms s
H=(s^3+2*s^2+5*s+10)/(s^2+5)
HH=simplify(H)

syms teta real
A=real((exp(i*teta)))
horner(A)
expand(A)
factor(A)
simplify(A)

%% [n,d]=numden()   pay ve paydayı çarpanlara ayırma
syms s
G=s+4+2/(s+4)+3/(s+2)
[n,d]=numden(G)

%% subs(s,a,b)   a yerine b değerini yazar
syms s
H=(s+3)/(s^2+6*s+8)
G=subs(H,s,s+2)

E=s^3-14*s^2+65*s-100
F=subs(E,s,7.1)

%% collect(s,v)  s adındaki sembolik ifadeyi v sembolik ifadesinin çarpanı olacak şekilde parçalar
syms x
A=-1/4*x*exp(-2*x)+3/16*exp(-2*x)
AA=collect(A,exp(-2*x))
%% collect() sembolik ifade içinde yer alan çarpanları polinom şekline sokar
syms x y s
A=collect(x^2*y+y*x-x^2-2*x)

G=(s+5)/((s+2)^2+6*s+20)
GG=collect(G)

%% sym2poly()  sembolik polinomun vektör şeklinde katsayılarını bulur
syms s 
B=4*s^3-2*s^2+5*s-16
BB=sym2poly(B)
%% poly2sym()  poly2sym(a,s)  a vektör s sembolik ifadesinin katsayıları
A=[1 4 -7 -10]
AA=poly2sym(A)
AAA=poly2sym(A,s)
AAA=poly2sym(A,y)

%% pretty()
syms e x
e=(1+x)^4/(1+x^2)+4/(1+x^2)
pretty(e)

%% simple() sembolik ifadenin mümkün olan tüm şekillerini verir   kaldırılmış çalışmadı
syms x
y=sqrt(cos(x)+i*sin(x))
simple(y)

%% Sembolik ifadelerden sayıya dönme işlemi
%% subs(E,s,b)  E sembolik ifadenin içinde yer alan s sembolik değişkenin yerine b sayısı yerleştirilerek sonuca ulaşılır
%% double()
syms s
E=s^3-14*s^2+65*s-100
F=subs(E,s,7.1)
FF=double(F)

%% Sembolik ifadenin grafiğinin çizdirilmesi
%% ezplot(f,a,b)  f sembolik ifadesinin çizimini "a" minim ile "b" maxsimum değerleri arasında gerçekleştirilir.
syms s
E=s^3-14*s^2+65*s-100
ezplot(E,-5,9)
ezplot(E)

ezplot('sin(3*t)*cos(t)','sin(3*t)*sin(t)',[0,pi])   % belirli aralık içerisinde yapılmak istenirse

%% Sembolik ifadelerin çözümü
%% [x y]=solve(eqn1,eqn2,..)
syms x y
[x,y]=solve(x^2+x*y+y==3,x^2-4*x+3==0)

syms s
E=s+2
EE=solve(E)

D=s^2+6*s+9
DD=solve(D)

P=s^3-2*s^2-3*s+10
PP=solve(P)

syms teta x z
E=z*cos(teta)-x
teta=solve(E,teta)

%% Sembolik ifadelerin türevi
%% diff()
syms s n
p=s^3+4*s^2-7*s-10
dp=diff(p)

syms x
f=log(x)
df=diff(f)

f2=(cos(x))^2
df2=diff(f2)

f3=sin(x^2)
df3=diff(f3)
df3simpl=simplify(df3)

f4=cos(2*x)
df4=diff(f4)

f5=exp(-(x^2)/2)
df5=diff(f5)

% diff(E,v)   E sembolik ifadesinin v sembolik değişkenine göre türevini alır.
syms s y
p=s^3+4*y^2/7*s-10
dp_s=diff(p,s)
dp_y=diff(p,y)

% 
syms x y z
Fxyz=x*y*z/(x+y+z)
m=[diff(Fxyz,x),diff(Fxyz,y),diff(Fxyz,z)]

m3x=diff(m(3),x)
pretty(m3x)

%% diff(E,a)   E sembolik ifadesinin 'a' dereceden türevini hesaplar
syms s n
p=s^3+4*s^2-7*s+10
dp1=diff(p)
dp2=diff(p,2)
dp3=diff(p,3)

g=s^n
h=diff(g)
simplify(h)

% diff(E,v,a)
syms s n
p=s^3+4*s^2-7*s+10
dp3=diff(p,s,3)

%% Diferensiyel Denklemlerin Sembolik Çözümleri
z=dsolve('(1+t^2)*Dy+2*t*y=cos(t)')
z1=dsolve('(1+t^2)*Dy+2*t*y=cos(t)','y(0)=0')
z2=dsolve('D2y+y=cos(2*x)','Dy(0)=1','y(0)=0')
z3=dsolve('D4y=y','D3y(pi/2)=0','D2y(pi/2)=-1','Dy(pi/2)=0','y(pi/2)=1')
z4=dsolve('Dy=cos(sin(x))','x')
[x,y]=dsolve('Dy+(a+b)*sin(t)=0','Dx=y','x(0)=1','y(0)=0')
[x,y]=dsolve('Dy+4*y+12*x=12','Dx-0.25*y=0','y(0)=2','x(0)=1')

%% Sembolik ifadelerin Integrali
% int(E)
syms x n
a=int(x^n)
a1=int(x^3+4*x^2+7*x+10)
% int(E,v)
syms s
p=s^3+4*s^2-7*s-10
dp=int(p,s)
% int(E,a,b)
syms s a b
p=s^3+4*s^2-7*s-10
dp1=int(p,a,b)
dp2=int(p,1,-2)
% int(E,b,a,b)
syms x a
p=a*x^3+4*x^2+7*x+10*a
dp3=int(p,x,1,3)
syms x
dp4=int(log10(1+exp(x)),0,-1)
dp4_1=double(dp4)
%% Sembolik ifadelerin Matrislere Uygulanması
A=sym([2,1;4,3])
Atranspose=transpose(A)
Ainverse=inv(A)
C=A*Ainverse
Adeterminant=det(A)

syms c
A=([2,-3;5,c])
B=sym([3;19])
X=A\B
%% Sembolik İşlemlerin Laplace 's' dönüşümüne uygulanması
syms t
laplace(t^5)
laplace(3*t-2*cos(t))
syms s
ilaplace((1/(2*s^2-3*s+4))*(3/s^2-2*s/(s^2+1)-4+2*s))

A=[-s 2*s;2*s 1-s]
B=[1/s;1]
C=inv(A)*B
Ct=ilaplace(C)

%% Sembolik işlemlerin Z dönüşümüne uygulanması
syms z n
ztrans(1/4^n)
iztrans(z/(z - 1/4))
%% Sembolik İşlemlerin Fourier Dönüşümüne uygulanması
% fft() : Hızlı fourier dönüşümünde kullanılır
% fft2()  : 2D hızlı fourier dönüşümü
% ifft()  : Ters hızlı fourier dönüşümü
% ifft2()  : 2D ters hızlı fourier dönüşümü
% fourier()  : Sembolik işlemlerde fourier dönüşümü
% ifourier()  : Sembolik işlemlerde ters fourier dönüşümü

syms x w
fourier(cos(3*x))
ifourier(pi*(dirac(w - 3) + dirac(w + 3)))
simplify(ifourier(pi*(dirac(w - 3) + dirac(w + 3))))
%% Sayıların istenilen hassasiyete göre düzenlenmesi
% vpa(s,k)
a=13/7
vpa(a,30)

vpa(pi,50)
%% MATLAB ortamında seri açılımı
syms x
% taylor(f) f(x) fonksiyonunun 5. dereceden Maclaurin polinomuna kadar seriye açar 
taylor(cos(exp(x)))
% taylor(f,,'Order',n)   fonksiyonunun (n-1). dereceden Maclaurin polinomuna kadar seriye açar 
taylor(exp(x),'Order',4)
pretty(ans)
% taylor(f,n,'Order',u)
syms u v
taylor(cos(u+v),u,'Order',4)
%% MATLAB ortamında serilerin toplanması
syms n
symsum(n*n,1,5)

symsum((0.1)^(n-1)/gamma(n),1,5)
double(ans)

syms n k
symsum(k^3,1,n)
factor(ans)

syms r
symsum(1/r^2,1,inf)
double(ans)
% Riemann Zeta fonksiyonu zeta(n)   1/k^n  serisi  k=1,2,3...
zeta(2)

% Gamma fonksiyonu  gamma(r)     1/r!  serisi  r=1,2,3...
symsum((1/gamma(r)),1,inf)
double(ans)

% Besseli fonksiyonu besseli(v,k)
% syms r 
% besseli(0,2)
% 
% besseli(n,2)
% double(ans)