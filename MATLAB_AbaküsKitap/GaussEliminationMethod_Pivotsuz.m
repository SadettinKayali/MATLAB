%% Lineer Denklem Sistemlerinde Çözüm Yaklaşımları
% Gauss Eliminasyon Yöntemi ile AX=B Lineer Eşitliğin Çözülmesi
% Pivotlama Kullanılmıyor.
A=[1,2,1,4;2,0,4,3;4,2,2,1;-3,1,3,2]
B=[13;28;20;6]
[N,N]=size(A)
NE1=N-1
%% İLERİYE DOĞRU HESAPLAMA BAŞLIYOR.
for K=1:NE1
    KA1=K+1
    for I=KA1:N
        P=A(I,K)/A(K,K)
        B(I)=B(I)-P*B(K)
        for J=KA1:N
            A(I,J)=A(I,J)-P*A(K,J)
        end
    end
end
%% İLERİYE DOĞRU HESAPLAMA BİTTİ.
%% GERİYE DOĞRU HESAPLAMA BAŞLIYOR.
B(N)=B(N)/A(N,N)
for K=2:N
    I=N-K+1
    IA1=I+1
top=0
    for J=IA1:N
        top=top+A(I,J)*B(J)
    end
    B(I)=(B(I)-top)/A(I,I)
end
B