%% Mantıksal İşlemciler
% & ve
% | veya
% ~ değil
A=1:9;
logic1=A>4
logic2=~(A>4)
logic3=(A>2)&(A<6)
logic4=xor((A>2),(A<6))

X=[0,0,1,1];
Y=[0,1,0,1];
Xdegil=~X;
XveY=X&Y;
XveyaY=X|Y
XxorY=xor(X,Y)

%% Mantıksal Fonksiyonlar
x=[3,-1,inf,0,4,NaN];
anyX=any(x)
allX=all(x)
findX=find(x)
isnanX=isnan(x)
isfiniteX=isfinite(x)
isinfX=isinf(x)

d=[]
isempty(d)
%% 
A=[1,2,3,4;5,6,7,8;9,10,11,12;13,14,15,16]
for c=1:4
    for r=1:4
        B(c,r)=A(r,c)
    end
end
%%
