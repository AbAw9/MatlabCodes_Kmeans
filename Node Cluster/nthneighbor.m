clc;clear
Data=xlsread('P.xls');
[Adj N]=getAdj(Data);S=sum(sum(Adj));

% view(biograph(triu(Adj),[]));

n=1;
% Member=nodeconnection(Adj,n);
% [GH B]=sort(Member,'descend');

V=zeros(N,1);
[dis B]=sort(shortest_from(Adj,n));
% [dis B]
for size=1:N
   
    Cluster=B(1:size);
   
    C=zeros(1,N);
    
    C(Cluster)=1;
    
    C(C==0)=2;
    V(size)=modularity(Adj,C,N,S);
    size;
end
plot(V);
% Cluster=B(1:a)';

