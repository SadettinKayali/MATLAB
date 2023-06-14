%%
% dot(,) iki vektörün iç (nokta) çarpımını yapar ve bir sayıya atar.
% doy(,) iki matrisin iç (nokta) çarpımını yapar ve bir vektöre atar.
x=[1,2,3];
y=[-1,2,1];
XdotY=dot(x,y)

z=[1,2,3;4,5,6];
b=[1,-1,-3;7,0,-2];
ZdotB=dot(z,b)

%% norm()
% norm(x) : x vektörünün normunu hesaplar.
%% transpose '
xtranspose=x'
%% eye(,)
Eye=eye(3)
C=[1,2,3;4,5,6;7,8,9];
Eyye=eye(size(C))

%% Matris Tersi
A=[2,1;4,3];
rankA=rank(A)
invA=inv(A)
Ainv=A^(-1)
%%
% rref : reduced row echelon form , hangi matrise uygulanırsa matrisin
% rankına eşit boyutta birim matris üretir.
B=[1,2,3;3,4,7;4,-3,1;2,5,3;1,-7,6];
rankB=rank(B)
rrefB=rref(B)

%% Matris Kuvveti
A2=A.^2
A5=A.^5
%% determinant
detA=det(A)
%% özdeğer vektörü eigen value
% [q,d]=eig(A) : Q Sütunları A matrisinin özvektörlerinden oluşan kare matristir.
%                d Ana köşegen üzerinde A matrisinin özdeğerlerini barındıran bir kare matristir
Z=[0.5,0.25;0.25,0.5]
eig(Z)
[q,d]=eig(Z)
%% Bol sıfırlı matrislerde işlemler
SIFIRLI=[0,0,0,12;1,0,0,0;2,0,0,2;1,0,0,0]
SIFIRSIZ=sparse(SIFIRLI)
FullHali=full(SIFIRSIZ)