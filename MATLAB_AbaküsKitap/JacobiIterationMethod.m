%% A*X=B Lineer Matris Eşitliğinin JACOBI iterasyon ile çözümü
% A=[4,-2,1;4,-8,1;-1,1,5];
% B=[6,-20,11]';            
% P0=[1,2,1]';              % Başlangıç değerleri

A=[5,-2,3;-3,9,1;2,-1,-1];
B=[-1,2,3];
P0=[0;0;0]

P=P0;
N=length(B);
X=zeros(1,N);
maxIter=30;
toleransDelta=1e-5;
for k=1:maxIter
    for J=1:N
    X(J)=(B(J)-A(J,[1:J-1,J+1:N])*P([1:J-1,J+1:N]))/A(J,J)
    end
    hata=abs(norm(X'-P));
    hataTek=hata/(norm(X)+eps);
    P=X';
    if (hata<toleransDelta)|(hataTek<toleransDelta)
        'Iterasyon maxIter den önce sona erdi'
        break
    end
end
display('Iterasyon sayisi=');
display(k-1);
X=X'