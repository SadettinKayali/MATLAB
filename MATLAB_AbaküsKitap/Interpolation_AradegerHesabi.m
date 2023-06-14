%% Doğrusal Aradeğer Hesabı
X=0:5;
Y=[0 20 60 68 77 110];
AraDeger1=interp1(X,Y,[2.6 4.9])

x=(0:5)';
y(:,1)=[0 20 60 68 77 110]';
y(:,2)=[0 25 62 67 82 103]';
y(:,3)=[0 52 90 91 93 96]';
AraDeger2=interp1(x,y,2.6)

%% Doğrusal Olmayan Aradeğer Hesabı _ kübik yaklaşım
Xx=0:5;
Yy=[0 20 60 68 77 110];
AraDeger3=spline(Xx,Yy,[2.6 4.9])

Xi=0:0.1:5;
Ydogru=interp1(Xx,Yy,Xi);
Ykubik=spline(Xx,Yy,Xi);

plot(Xi,Ydogru,':',Xi,Ykubik,Xx,Yy,'o')
legend('Doğrusal','Kübik','Ölçülen')
title('Doğrusal ve Kübik spline aradeğer hesabı')
xlabel('x')
axis([-1,6,-20,120])
grid 

%% İki Boyutlu Aradeğer Hesabı
x=0:0.5:4;
y=0:0.5:6;
z=[100 99 100 99 100 99 99 99 100;
    100 99 99 99 100 99 100 99 99;
    99 99 98 98 100 99 100 100 100;
    100 98 97 97 99 100 100 100 99;
    100 99 100 99 100 99 99 99 100;
    100 99 99 99 100 99 100 99 99;
    99 99 98 98 100 99 100 100 100;
    100 98 97 97 99 100 100 100 99;
    100 99 100 99 100 99 99 99 100;
    100 99 99 99 100 99 100 99 99;
    99 99 98 98 100 99 100 100 100;
    100 98 97 97 99 100 100 100 99;
    99 99 98 98 100 99 100 100 100;
];

mesh(x,y,z)
zmax=interp2(x,y,z,2.2,3.3)
z1=griddata(x,y,z,2.2,3.3)