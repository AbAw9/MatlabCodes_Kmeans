function [NC Nodes] = SignificantData(SM,n)
% clc
% Data = xlsread('M3.xls');
% [M n]=getAdj(Data);
% SM = sparse(M);
B=betweenness_centrality1(SM);

[B N]=sort(B,'descend');

d = B(1:n-2) - 2*B(2:n-1) + B(3:n);

d=[d;0;0];

[~,NC]=max(d);

Nodes=N(1:NC);

% SN = 24;
% 
% D = graphallshortestpaths(SM);
% [D1 N1]=sort(D(SN,:));
% [D1' N1']
% P = zeros(NC,1);t=0;
% for i = 1:n
%     if(ismember(N1(i),Nodes))
%         t=t+1;
%         P(t)=N1(i);
%     end
% end
% P
% x=find(N1==P(1))
% [D2 N2]=sort(D(P(1),:));
% [D2' N2']
% y=find(N1==P(2))-1;
% Cl = N2(1:x);
% [D1' N1'];