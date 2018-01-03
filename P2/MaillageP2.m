function [X, T] = MaillageP2(app,a, b, h)
%----------------------------
% Genere un maillage de type P2
% X la table des coordonnees 
% T la table de connectivite moyennant les indices
%----------------------------
    n = floor((b - a)/h) + 1;
    X = a + h*(0:0.5:n-1)';
        
    [~, I] = sort(X);
    T = [ I(1:2:2*n-2), I(3:2:2*n)];

%
% Partie affichage
%
    %figure('name', sprintf('Representation du Maillage ( n = %d )', n) );
    plot(app.UIAxes,X, zeros(1,2*n-1), 'b-o');
    for i = 1:size(X,1)
        text(app.UIAxes,X(i), 0.1, sprintf('X_{%d}', i), 'color', 'blue'); 
    end
    
    for i = 1:size(T,1)
        text(app.UIAxes,X(T(i,1)) + 2*(X(T(i,2))-X(T(i,1)))/5, -0.1, sprintf('T_{%d}', i), 'color', 'red');
    end
    
end