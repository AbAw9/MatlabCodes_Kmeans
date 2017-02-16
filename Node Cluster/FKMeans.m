clc;clear
Data=xlsread('ocl.xls');
[Adj N]=getAdj(Data);
[D S]=all_shortest(Adj);
k=input('Enter the size of cluster= ');
n=input('Enter the cluster center= ');
single=N-k;
Q=zeros(single,1);
[dis nodes]=sort(D(n,:),'descend');
Cluster=nodes(single+1:N);
[dis' nodes']
Cluster