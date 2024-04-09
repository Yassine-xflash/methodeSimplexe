function [tableau, baseL] = initTableauDeux(A, b, c)
  [m, n] = size(A);
  % Ajout des variables artificielles pour la première phase
  APhase1 = [A eye(m)];
  cPhas1 = [zeros(1, n) ones(1, m)]; % Coût des variables artificielles fixé à 1

  tableau = [APhase1 b];
  tableau = [tableau; [cPhas1 0]];

  disp('Tableau initial du Simplexe pour la première phase :\n');
  ColoneNom = cell(1, n+m+1);
  for i = 1:n
      ColoneNom{i} = ['x', num2str(i)];
  end
  for i = 1:m
      ColoneNom{n+i} = ['e', num2str(i)]; 
  end
  ColoneNom{end} = 'b';

  ligneNom = cell(1, m+1);
  for i = 1:m
      ligneNom{i} = ['e', num2str(i)];
  end
  ligneNom{end} = 'z';

  baseL = ligneNom;
  T = array2table(tableau, 'VariableNames', ColoneNom, 'RowNames', ligneNom);
  disp(T);
end
