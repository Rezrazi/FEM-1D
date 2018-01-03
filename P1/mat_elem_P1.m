function [ elemKi,elemMi ] = mat_elem_P1(app,alpha,beta,X,T,i)
%calcule la matrice élémentaire dans l'élément Ti
%               Ti
%       |---------------|
%       x1              x2
%
x1=X(T(i,1));
x2=X(T(i,2));

elemMi=beta*elemMi_P1(app,x1,x2);
elemKi=-alpha*elemKi_P1(app,x1,x2);
end