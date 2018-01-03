function [K,M,F] = AssemblageP1(app,alpha,beta,f, X, T)
% Assemblage des matrices ?l?mentaires "elemki" dans la matrice globale K
% Assemblage des seconds membres ?l?mentaires "elemFi" dans le second
% membre global F
% cette fonction fait appel aux fonctions:
%    1) mat_elem_P1(alha,X,T,i)
%    2) SM_elem_P1(f,X,T,i)
%
n = size(X,1);   % nombre des noeuds
t = size(T,1);   % nombre des ?l?ments

K = zeros(n);
M = zeros(n);
F = zeros(n,1);

% Assemblage de la matrice golbale K
%
for k=1:t   % boucle sur les ?l?ments
    [ elemKi,elemMi] = mat_elem_P1(app,alpha,beta,X,T,k);  % matrice de l'?l?ment num?ro k
    for i=1:2  %boucle sur les num?ros locaux
        for j=1:2  %boucle sur les num?ros locaux
            I=k+i-1;                            % num?ros globaux dans K
            J=k+j-1;                            % num?ros globaux dans K
            K(I,J)=K(I,J)+ elemKi(i,j);
            M(I,J)=M(I,J)+ elemMi(i,j);         % l'assemblage
        end
    end
end

% Assemblage du second membre ?l?mentaire golbal F
%
for k=1:t   % boucle sur les ?l?ments
    elemFi = SM_elem_P1(app,f,X,T,k);  % SM de l'?l?ment num?ro k
    for i=1:2  %boucle sur les numros locaux
        I=k+i-1;                            % num?ros globaux dans K
        F(I)=F(I)+ elemFi(i);         % l'assemblage
    end
end
end
