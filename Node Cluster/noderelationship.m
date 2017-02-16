% function AN = noderelationship(Adj)
% clc
% Data=xlsread('G1.xls');
% [Adj N]=getAdj(Data);S=sum(sum(Adj));


n=length(Adj);
AN=zeros(n,n);
P=sum(Adj,2);
for i=1:n
    for j=1:n
        AN(i,j)=P(i)/(sum(Adj(i,:).*Adj(j,:)));
    end
end
AN(AN==inf)=0;