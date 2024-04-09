function X = degagerSolution(Tab)
[l c]=size(Tab);
I=eye(l);
X=zeros(1,c-2);
h=1;
for i=1:c-2
    for j=1:l
        if(Tab(:,i)==I(:,j))
            X(h)=Tab(j,c);
        end
    end
    h=h+1;
end
end