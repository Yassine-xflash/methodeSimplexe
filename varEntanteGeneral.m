function [VarEntr,Col] = varEntanteGeneral(tableau, mode)
    if strcmp(mode, 'max')
        [maxVal, Col] = max(tableau(end, 1:end-1));
    elseif strcmp(mode, 'min')
        [minVal, Col] = min(tableau(end, 1:end-1));
    else
        error('mode Invalid! Utiliser "max" pour maximisation ou "min" pour minimisation.');
    end
    VarEntr = tableau(:, Col);
end