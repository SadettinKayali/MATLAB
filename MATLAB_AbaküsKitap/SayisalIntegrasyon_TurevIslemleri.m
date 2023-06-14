%% Sayısal Integrasyon Hesabı
%% Yamuklar (Trapez Yöntemi) Yöntemi İle İntegrasyon Hesabı
% [a,b]  aralığı n eşit parçaya bölünür.  deltaX=(b-a)/n
% Ai=deltaX*(f(xi)+f(xi+1))/2
% trapz() komutu

% z=trapz(y)
y1=[2,4,6];
z1=trapz(y1);

y2=[0 1 2;3 4 5];
z2=trapz(y2);
% z=trapz(y,'dim')  
y2;
z3=trapz(y2,1);
z4=trapz(y2,2);

% humps()   :  Eğrinin altındaki alanı hesaplar  [a,b] a ve b tepe noktaları olan eğri 
x=linspace(-1,2,18);
y=humps(x);
alan=trapz(x,y);

x=linspace(-1,2,401);
y=humps(x);
alan=trapz(x,y);

% Mevcut matlab fonksiyonlarında da kullanılabilir
x=sort(rand(1,101)*pi);
y=sin(x);
z=trapz(x,y);
% cumtrapz()
x=linspace(-1,2,201);
y=humps(x);
z=cumtrapz(x,y); % kümülatif integral
plot(x,y,x,z,'--')
legend('Humps(x)','Humps(dx)')



%% Belirli Integral Alma
y=quad('1000*exp(-0.5*x)',0,3)   % [0,3] aralığında 1000*exp(-0.5*x) fonksiyonunun integrali alınıyor
%% 2 Katlı İntegrasyon
H=dblquad('1000*exp(-0.5*x+y)',0,3,0,2)
%% 3 Katlı İntegrasyon
H=triplequad('1000*exp(-0.5*x+y)+z',0,3,0,2,0,1)
%% Türev Alma
t=0:0.01:5;
v=t.^3-2*t.^2+2;
dv=diff(v)./diff(t);