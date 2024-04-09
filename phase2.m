function [A2,b2,c2] = phase2(A,b,c,artificielles,solution1)
    % Retirer les variables artificielles du tableau et de la solution
    A2 = A;
    A2(:,end-length(artificielles)+1:end) = [];
    b2 = b;
    c2 = c;
    c2(end-length(artificielles)+1:end) = [];
    % Utiliser la solution de la phase 1 comme solution initiale pour la phase 2
    Xartific = solution1(end-length(artificielles)+1:end);
    Xartific(Xartific < eps) = 0;
    solution1(end-length(artificielles)+1:end) = Xartific;
    solution1 = solution1(1:end-length(artificielles));
    % Retourner les matrices modifiées
    A2 = A2;
    b2 = b2;
    c2 = c2;
end
