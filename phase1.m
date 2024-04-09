function [A1,b1,c1,artificielles] = phase1(A,b,c)
    [m,n] = size(A);
    artificielles = 1:m;
    for i = 1:m
        if b(i)>=0
            A(i,n+i) = 1;
        else
            A(i,n+i) = -1;
            A(i,:) = -A(i,:);
            b(i) = -b(i);
        end
    end
    c1 = zeros(1 n+m);
    c1(n+artificielles) = 1;
    A1 = [A eye(m)];
    b1 = b;
end