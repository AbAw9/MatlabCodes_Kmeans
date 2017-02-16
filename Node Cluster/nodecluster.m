clc;clear
Data=xlsread('P.xls');
[Adj N]=getAdj(Data);S=sum(sum(Adj));

% view(biograph(triu(Adj),[]));
% size=input('Enter the size of cluster= ');
% n=input('Enter the node around which the cluster should be concentrated= ');
n=8;
Member=nodeconnection(Adj,n);
[GH B]=sort(Member,'descend');
B';

V=zeros(N,1);
dis=sort(shortest_from(Adj,n));
for size=1:N
    if(ismember(n,B(1:size)))
        Cluster=B(1:size);
    else
        Cluster=[n;B(1:size-1)];
    end

    C=zeros(1,N);
    
    C(Cluster)=1;
    
    C(C==0)=2;
    V(size)=modularity(Adj,C,N,S);
    size;
end
% view(biograph(triu(Adj),[]));
[x a]=max(V);

a=21
if(ismember(n,B(1:a)))
    Cluster=B(1:a)';
else
    Cluster=[n B(1:a-1)'];
end
Cluster
x
  plot(V);
  V(21)
  