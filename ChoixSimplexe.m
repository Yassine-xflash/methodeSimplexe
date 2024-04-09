function [valObj, tableauFinal, s] = ChoixSimplexe(A, b, c)
    disp('Choisissez le type de problème :');
    disp('1. Maximisation');
    disp('2. Minimisation');
    
    choix = input('Entrez votre choix (1 ou 2) : ');
    
    if choix == 1
        [valObj, tableauFinal, s] = Simplexe(A, b, c,"max");
    elseif choix == 2
        [valObj, tableauFinal, s] = Simplexe(A, b, c,"min");
    else
        error('Choix invalide.');
    end
end