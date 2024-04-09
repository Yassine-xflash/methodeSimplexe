function [varSortant, estBornee, base] = VarSortanteGeneral(tableau, varEntrant)
    m = size(tableau, 1);
    Min = Inf;
    varSortant = -1;
    estBornee = true;
    base = zeros(m, 1); 
    for i = 1:m
        if tableau(i, varEntrant) ~= 0
            divis = tableau(i,end)/tableau(i,varEntrant);
            if divis>0 && divis<Min
                Min = divis;
                varSortant = i;
            end
            if divis <= 0
                estBornee = false;
                break;
            end
        end
    end
    if varSortant ~= -1
        base(varSortant) = varEntrant;
    end
end