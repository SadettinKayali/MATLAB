%% Kutupsal Koordinat Gösterimi , Üstel Gösterim

% e^(j*theta) = cos(theta) + j*sin(theta)
% cos(theta) = (1/2)*(e^(j*theta)^+e^(-j*theta)
% sin(theta) = (1/(2*j))*(e^(j*theta)^-e^(-j*theta)

% z=r*e^(j*theta)
% z= r*cos(theta)  + j*sin(theta)
% z= r*(cos(theta) + j*sin(theta)

z=3+4j;
r=abs(z);
theta=angle(z);
thetaAngle=(180/pi)*angle(z);
zz= r*cos(theta)  + 1i*sin(theta);
zzz= r*exp(j*theta)

zkonj=conj(z)

real(z)
imag(z)

