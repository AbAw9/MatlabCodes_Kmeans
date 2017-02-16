function [N D] = all_shortest(A)
W=sparse(A);n=length(A);N=zeros(n,n);
D=graphallshortestpaths(W);
for i=1:n
    for j=1:n
        B=A^(D(i,j));
        N(i,j)=B(i,j);
    end
end