function elemMi = elemMi_P2(app,x1,x2,x3)
xm1=(x2+x1)*0.5;
xm2=(x3+x2)*0.5;
hh = (x3-x1);
A = (hh/90)*(7*phi1_P2(app,x1,x1,x2,x3)*phi1_P2(app,x1,x1,x2,x3)+32*phi1_P2(app,xm1,x1,x2,x3)*phi1_P2(app,xm1,x1,x2,x3)+12*phi1_P2(app,x2,x1,x2,x3)*phi1_P2(app,x2,x1,x2,x3)+32*phi1_P2(app,xm2,x1,x2,x3)*phi1_P2(app,xm2,x1,x2,x3)+7*phi1_P2(app,x3,x1,x2,x3)*phi1_P2(app,x3,x1,x2,x3));
B = (hh/90)*(7*phi1_P2(app,x1,x1,x2,x3)*phi2_P2(app,x1,x1,x2,x3)+32*phi1_P2(app,xm1,x1,x2,x3)*phi2_P2(app,xm1,x1,x2,x3)+12*phi1_P2(app,x2,x1,x2,x3)*phi2_P2(app,x2,x1,x2,x3)+32*phi1_P2(app,xm2,x1,x2,x3)*phi2_P2(app,xm2,x1,x2,x3)+7*phi1_P2(app,x3,x1,x2,x3)*phi2_P2(app,x3,x1,x2,x3));
C = (hh/90)*(7*phi1_P2(app,x1,x1,x2,x3)*phi3_P2(app,x1,x1,x2,x3)+32*phi1_P2(app,xm1,x1,x2,x3)*phi3_P2(app,xm1,x1,x2,x3)+12*phi1_P2(app,x2,x1,x2,x3)*phi3_P2(app,x2,x1,x2,x3)+32*phi1_P2(app,xm2,x1,x2,x3)*phi3_P2(app,xm2,x1,x2,x3)+7*phi1_P2(app,x3,x1,x2,x3)*phi3_P2(app,x3,x1,x2,x3));
D = (hh/90)*(7*phi2_P2(app,x1,x1,x2,x3)*phi2_P2(app,x1,x1,x2,x3)+32*phi2_P2(app,xm1,x1,x2,x3)*phi2_P2(app,xm1,x1,x2,x3)+12*phi2_P2(app,x2,x1,x2,x3)*phi2_P2(app,x2,x1,x2,x3)+32*phi2_P2(app,xm2,x1,x2,x3)*phi2_P2(app,xm2,x1,x2,x3)+7*phi2_P2(app,x3,x1,x2,x3)*phi2_P2(app,x3,x1,x2,x3));
E = (hh/90)*(7*phi2_P2(app,x1,x1,x2,x3)*phi3_P2(app,x1,x1,x2,x3)+32*phi2_P2(app,xm1,x1,x2,x3)*phi3_P2(app,xm1,x1,x2,x3)+12*phi2_P2(app,x2,x1,x2,x3)*phi3_P2(app,x2,x1,x2,x3)+32*phi2_P2(app,xm2,x1,x2,x3)*phi3_P2(app,xm2,x1,x2,x3)+7*phi2_P2(app,x3,x1,x2,x3)*phi3_P2(app,x3,x1,x2,x3));
F = (hh/90)*(7*phi3_P2(app,x1,x1,x2,x3)*phi3_P2(app,x1,x1,x2,x3)+32*phi3_P2(app,xm1,x1,x2,x3)*phi3_P2(app,xm1,x1,x2,x3)+12*phi3_P2(app,x2,x1,x2,x3)*phi3_P2(app,x2,x1,x2,x3)+32*phi3_P2(app,xm2,x1,x2,x3)*phi3_P2(app,xm2,x1,x2,x3)+7*phi3_P2(app,x3,x1,x2,x3)*phi3_P2(app,x3,x1,x2,x3));

elemMi = [A B C;B D E;C E F];
end
