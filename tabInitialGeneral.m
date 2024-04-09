function [S, s,ColoneNom] = tabInitialGeneral(A, b, c, mode)
    [n,m] = size(A);
    if strcmp(mode, 'max')
        C = [c zeros(1, n) -1 0];
    elseif strcmp(mode, 'min')
        C = [c zeros(1, n) 1 0];
    else
        error('mode invalide!!. utiliser "max" pour  maximisation ou "min" pour minimisation.');
    end
    Z = zeros(n, 1);
    S = [A eye(n) Z b];
    S = [S; C];
    ColoneNom = cell(1, n+m+1);
      for i = 1:m
          ColoneNom{i} = ['x', num2str(i)];
      end
      for i = 1:n
          ColoneNom{m+i} = ['e', num2str(i)]; 
      end
      ColoneNom{end} = 'z';
      ColoneNom{end+1} = 'b';

      ligneNom = cell(1, n+1);
      for i = 1:n
          ligneNom{i} = ['e', num2str(i)];
      end
      ligneNom{end} = 'z';
      T = array2table(S, 'VariableNames', ColoneNom, 'RowNames', ligneNom);
      disp(T);
    s = degagerSolution(S);
end