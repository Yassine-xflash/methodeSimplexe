function tableau = Pivoter(tableau, Variable_Entrant, Variable_Sortant,mode)
Ligne_Pivot = Variable_Sortant;
Colonne_Pivot = Variable_Entrant;
facteur = tableau(Ligne_Pivot, Colonne_Pivot);
    if strcmp(mode, 'max')
        if facteur <= 0
            error('L element de pivot ce n est pas positive.');
        end
    elseif strcmp(mode, 'min')
        if facteur >= 0
            error('L element de pivot ce n est pas negative.');
        end
    else
        error('mode d optimisation invalide.');
    end
tableau(Ligne_Pivot, :) = tableau(Ligne_Pivot, :) / facteur;
for i = 1:size(tableau, 1)
    if i ~= Ligne_Pivot
        facteur = tableau(i, Colonne_Pivot);
        tableau(i, :) = tableau(i, :) - facteur * tableau(Ligne_Pivot, :);
    end
end
end

