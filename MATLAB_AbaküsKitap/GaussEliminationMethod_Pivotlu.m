%% Lineer Denklem Sistemlerinde Çözüm Yaklaşımları
% Gauss Eliminasyon Yöntemi ile AX=B Lineer Eşitliğin Çözülmesi
% Pivotlama Kullanılıyor.
A=[1,2,1,4;2,0,4,3;4,2,2,1;-3,1,3,2]
B=[13;28;20;6]
[N,N]=size(A);
X=zeros(N,1);
C=zeros(1,N+1);
genis=[A,B];
for p=1:N-1
    [Y,J]=max(abs(genis(p:N,p)));
    C=genis(p,:);
    genis(p,:)=genis(J+p-1,:);
    genis(J+p-1,:)=C;
    if genis(p,p)==0
        'A matrisi tekil olduğu için program durduruluyor.'
        break
    end
    for k=p+1:N
        m=genis(k,p)/genis(p,p)
        genis(k,p:N+1)=genis(k,p:N+1)-m*genis(p,p:N+1);
    end
end
A=genis(1:N,1:N);
B=genis(1:N,N+1);
X(N)=B(N)/A(N,N);
for k=N-1:-1:1
        X(k)=(B(k)-A(k,k+1:N)*X(k+1:N))/A(k,k)
end
X