function [ elemKi,elemMi ] = mat_elem_P2(app,alpha,beta,X,T,i)
%calcule la matrice élémentaire dans l'élément Ti
%               Ti
%       |---------------|
%       x1              x2
%
x1=X(T(i,1));
x3=X(T(i,2));
x2=X(T(i,2)-1);
elemMi=beta*elemMi_P2(app,x1,x2,x3);
elemKi=-alpha*elemKi_P2(app,x1,x2,x3);
end