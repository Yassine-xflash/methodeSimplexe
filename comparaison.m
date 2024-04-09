A = [3 9; 4 5; 2 1];
c = [6 4];
b1 = [81; 55; 20];
tic
    [valObj, tableauFinal, s1] = Simplexe(A, b1, c,"max");
solTemp = toc;
disp(['Temps d''exécution: ', num2str(solTemp), ' secondes']);
tic
    [x, fval, exitflag, output] = linprog(-c, [], [], A, b1);
sol2Temp = toc;
disp(['Temps d''exécution: ', num2str(sol2Temp), ' secondes']);
