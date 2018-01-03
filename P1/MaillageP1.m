function [X, T] = MaillageP1(app,a, b, h)
%----------------------------
%G?n?re un maillage de type P1
% X la table des coordonn?es
% T la table de connectivit? moyennant les indices
%----------------------------
n = floor((b - a)/h) + 1;
X = a + h*(0:n-1)';

[~, I] = sort(X);
T = [ I(1:n-1), I(2:n)];
%
%Partie affichage
%
%figure('name', sprintf('Representation du Maillage ( n = %d )', n) );
plot(app.UIAxes,X, zeros(1,n), 'b-o');
for i = 1:size(X,1)
    text(app.UIAxes,X(i), 0.1, sprintf('X_{%d}', i), 'color', 'blue');
end

for i = 1:size(T,1)
    text(app.UIAxes,X(T(i,1)) + 2*(X(T(i,2))-X(T(i,1)))/5, -0.1, sprintf('T_{%d}', i), 'color', 'red');
end

end