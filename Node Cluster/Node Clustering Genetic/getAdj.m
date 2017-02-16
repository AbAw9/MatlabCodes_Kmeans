function [M n]= getAdj(D)
n=max(max(D(:,1),D(:,2)));M=zeros(1,n*n);

M(D(:,1)' + (D(:,2)' - 1)*n)=D(:,3);

M=reshape(M,n,n);

M=M+M';