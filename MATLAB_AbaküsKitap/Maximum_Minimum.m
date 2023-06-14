
%% max(x): Eğer x bir vektör ise bu komut ile x vektörünün en büyük elemanı bulunur. 
b=[1,2,3];
maxB=max(b)
minB=min(b)
%          Eğer x bir matris ise bu komut ile x matrisindeki her bir
%          sütunun en büyük sayısı bir vektör olarak bulunur.
a=[1 2 3;4 5 6;7 8 9];
maxA=max(a)
minA=min(a)
%% [y,k]:  Eğer x bir vektör ise bu komut ile x vektörünün en büyük elemanı bulunur. (y vektörü) 
%          Bu değerin indisi ise k adlı değere atanır. 

%          Eğer x bir matris ise bu komut ile x matrisindeki her bir
%          sütunun en büyük sayısı bir vektör olarak ( y vektörü ) atanır.
%          k ise y'yi oluşturan her bir elemanın içinde bulunduğu sütünun
%          kaçıncı elemanı olduğunu gösteren vektördür.
a=[1,2,7;4,8,6;3,5,9];
[ymax,kmax]=max(a)
[ymin,kmin]=min(a)
%% max(x,y) :x veye matrislerinin boyutları aynı olmalıdır. 
% Bu komut ile elde edilen matris x ve y ile aynı boyuttadır. 
% Bu komut ile x ve y matris elemanları birer birer karşılaştırılır.
% En büyük olan değer yeni oluşturulan matrise atanır.
K=[13 14 15;1 2 3];
D=[0 14 20;1 3 89];
max_K_D=max(K,D)
min_K_D=min(K,D)
