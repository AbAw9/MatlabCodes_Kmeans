clc
clear
D=xlsread('G7.xls');[A,~]=getAdj(D);
% view(biograph(A,[],'ShowArrows','off','ShowWeights','on'))


P=betweenness(A);
[V N]=sort(P,'descend');
V'