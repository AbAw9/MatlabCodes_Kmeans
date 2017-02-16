clc;clear;A=xlsread('Ga.xls');[G nodes]=getAdj(A);n=nodes;
% view(biograph(triu(G)))
tic
D= allspath(G);
toc
tic
D1 = graphallshortestpaths(sparse(G));
toc
[D(:) D1(:)];
%%
Sig=zeros(n,n);
for i=1:n
    for j=1:n
        Sig(i,j)=(G(i,j))*ShrinkSig(i,j,G);
    end
end
x = 12;
P=[x find(Sig(x,:)==max(Sig(x,:)))]
y =length(P);
X=P;
for i =1:y
% X=[X find(Sig(P(i),:)~=0)];
X=[X find(max(Sig(X(i),:)))];
end
unique(X)