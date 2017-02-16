function [M n]= getAdj(D)

n=max([D(:,1);D(:,2)]);

M=zeros(1,n*n);

M(sub2ind([n n], D(:,1)',D(:,2)'))=D(:,3);

M=reshape(M,n,n);

M=M+M';