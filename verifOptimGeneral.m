function [Optimal,optimalValue] = verifOptimGeneral(tableau, mode)
    numVars = size(tableau, 2);
    Optimal = 1;
    optimalValue = NaN;
    if strcmp(mode, 'max')
        for i = 1:numVars-1
            if (tableau(end, i) > 0)
                Optimal = 0;
                break;
            end
        end
    elseif strcmp(mode, 'min')
        for i = 1:numVars-1
            if (tableau(end, i) < 0)
                Optimal = 0;
                break;
            end
        end
    end
    
    if Optimal == 0
        fprintf("Malheureusement, vous n'avez pas atteint l'optimum... Essayez d'améliorer votre solution.\n");
    else
        fprintf("Félicitations ! Vous avez atteint l'optimum.\n");
        if strcmp(mode, 'max')
        optimalValue = abs(tableau(end, end));
        elseif strcmp(mode, 'min')
        optimalValue = - tableau(end, end);  
        end
        fprintf("La valeur de la fonction objective optimale est:%.1f\n", optimalValue);
    end   
end