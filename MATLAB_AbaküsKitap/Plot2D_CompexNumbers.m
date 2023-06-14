% help graph2d

%% Kompleks sayıların MATLAB ortamında çizilmesi
z=3+4i
figure(1)
compass(z)
%% plot
figure(2)
z1=1.5+0.5i;
z2=0.5+1.5i;
z3=z1+z2;
z4=z1*z2;
z5=conj(z1);
z6=i*z2;
z7=z2/z1;
axis([-3 3 -3 3])
axis square
grid on
hold on
plot(z1,"k.");text(real(z1)+0.1,imag(z1),'z1');
plot(z2,"ko");text(real(z2)+0.1,imag(z2),'z2');
plot(z3,"kx");text(real(z3)+0.1,imag(z3),'z3=z1+z2');
plot(z4,"k*");text(real(z4)+0.1,imag(z4),'z4=z1*z2');
plot(z5,"k+");text(real(z5)+0.1,imag(z5),'z5=z1*');
plot(z6,"kd");text(real(z6)+0.1,imag(z6),'z6=i*z2');
plot(z7,"kp");text(real(z7)+0.1,imag(z7),'z7=z2/z1');
hold off
xlabel('Reel Kısım');ylabel('Sanal Kısım');title('Kompleks Sayılar')
%% compass
figure(3)
grid on
hold on
plot(z1,"k.");text(real(z1)+0.1,imag(z1),'z1');
compass(z1,'k')
compass(z2,'k')
compass(z3,'k')
compass(z4,'k')
compass(z5,'k')
compass(z6,'k')
compass(z7,'k')
plot(z2,"ko");text(real(z2)+0.1,imag(z2),'z2');
plot(z3,"kx");text(real(z3)+0.1,imag(z3),'z3=z1+z2');
plot(z4,"k*");text(real(z4)+0.1,imag(z4),'z4=z1*z2');
plot(z5,"k+");text(real(z5)+0.1,imag(z5),'z5=z1*');
plot(z6,"kd");text(real(z6)+0.1,imag(z6),'z6=i*z2');
plot(z7,"kp");text(real(z7)+0.1,imag(z7),'z7=z2/z1');
hold off
axis([-3 3 -3 3])
axis square
xlabel('Reel Kısım');ylabel('Sanal Kısım');title('Vektör Çizim')
%% polar
figure(4)
z1=1.5+0.5i;
r1=abs(z1); aci1=angle(z1)
z2=0.5+1.5i;
r2=abs(z1); aci2=angle(z2)
z3=z1+z2;
r3=abs(z1); aci3=angle(z3)
z4=z1*z2;
r4=abs(z1); aci4=angle(z4)
z5=conj(z1);
r5=abs(z1); aci5=angle(z5)
z6=i*z2;
r6=abs(z1); aci6=angle(z6)
z7=z2/z1;
r7=abs(z1); aci7=angle(z7)
grid on
hold on
polar(aci1,r1,"k.");text(real(z1)+0.1,imag(z1),'z1');
polar(aci2,r2,"ko");text(real(z2)+0.1,imag(z2),'z2');
polar(aci3,r3,"kx");text(real(z3)+0.1,imag(z3),'z3=z1+z2');
polar(aci4,r4,"k*");text(real(z4)+0.1,imag(z4),'z4=z1*z2');
polar(aci5,r5,"k+");text(real(z5)+0.1,imag(z5),'z5=z1*');
polar(aci6,r6,"kd");text(real(z6)+0.1,imag(z6),'z6=i*z2');
polar(aci7,r7,"kp");text(real(z7)+0.1,imag(z7),'z7=z2/z1');
hold off
axis([-3 3 -3 3])
axis square
xlabel('Reel Kısım');ylabel('Sanal Kısım');title('Polar Çizim')