function [Sol,Vsol,Fobj,VarNom]=Simplexe(A, b, c,mode)
    disp('§§§§§§§§§§§§    Standarisation du problem :    §§§§§§§§§§§§');
    [Sol, Vsol,VarNom] = tabInitialGeneral(A, b, c,mode);
    disp('Le tableau initial est: ');
    disp(Sol);
    disp('La solution initiale est: ');
    disp(Vsol);
    [optim,obj] = verifOptimGeneral(Sol,mode);
    disp('-----------------------------------------------------------------------------------------');
    
    while optim == 0
        [x, y] = varEntanteGeneral(Sol,mode);
        disp('La variable entrante est: ');
        disp(VarNom(y));
        disp('La ligne de la variable entrante est: ');
        disp(x);
        Variable_Sortant = VarSortanteGeneral(Sol, y);
        Sol = Pivoter(Sol, y, Variable_Sortant,mode);
        format rat;
        disp(Sol);
        Vsol=degagerSolution(Sol);
        disp('La nouvelle solution est: ');
        disp(Vsol);
        [optim,obj] = verifOptimGeneral(Sol,mode);
    end
    Fobj=obj;
    Sol=Sol;
    Vsol=Vsol;
end