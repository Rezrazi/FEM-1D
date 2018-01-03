function y = int_phi1_P2(app,f,x1,x2,x3)
%calcule l'intégrale sur l'élément Ti de f*phi1
%moyennant la quadrature de Simpson 
%               Ti
%       |--------|--------|
%       x1       xm       x2
%
xm1=(x2+x1)*0.5;
xm2=(x3+x2)*0.5;
hh = (x3-x1);
%
%y=(x2-x1)/6*(f(x1)*phi1_P1(x1,x1,x2)+4*f(xm)*phi1_P1(xm,x1,x2)+f(x2)*phi1_P1(x2,x1,x2));
y=(hh/90)*(7*f(x1)*phi1_P2(app,x1,x1,x2,x3)+32*f(xm1)*phi1_P2(app,xm1,x1,x2,x3)+12*f(x2)*phi1_P2(app,x2,x1,x2,x3)+32*f(xm2)*phi1_P2(app,xm2,x1,x2,x3)+7*f(x3)*phi1_P2(app,x3,x1,x2,x3));
end