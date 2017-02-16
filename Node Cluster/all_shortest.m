function [D N] = all_shortest(A)

D=graphallshortestpaths(sparse(A));

n=length(A);

N=zeros(n,n);

u_e = gUnique(D(:));

l_u = length(u_e);

B=zeros(n,n,l_u);

for i=1:l_u
    
    B(:,:,i)=A^u_e(i);
    
end

for i=1:n
    
    for j=1:n
        
        N(i,j)=B(i,j,u_e==D(i,j));
        
    end
    
    N(i,i)=0;
    
end