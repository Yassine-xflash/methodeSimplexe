function [solution, fval, tableau] = methodeDeuxPhases(A, b, c, mode)
    % Phase 1
    [A1, b1, c1, artificielles] = phase1(A, b, c);
    [solution1, fval1, tableau1] = simplexe(A1, b1, c1, mode);
    
    % Vérifier si le problème est infaisable
    if fval1 ~= 0
        disp('Le problème est infaisable.');
        solution = [];
        fval = [];
        tableau = [];
        return;
    end
    
    % Phase 2
    [A2, b2, c2] = phase2(A, b, c, artificielles, solution1);
    [solution, fval, tableau] = simplexe(A2, b2, c2, mode);
    
    disp(['Solution : ', num2str(solution)]);
    disp(['Valeur de la fonction objectif : ', num2str(fval)]);
end

