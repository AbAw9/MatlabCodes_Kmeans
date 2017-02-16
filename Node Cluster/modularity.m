function Q = modularity(SM,C,n,s)


m=max(C,[],2);

P=zeros(m*n,1);

P(C + (0:m:(n-1)*m))=1;

P=reshape(P,m,n);

P=sparse(P); % 1
    
A=P*SM; % 4

E=(A*P')/s; % 3

X=sum(diag(E));
   
S=E*E; % 2
    
Y=sum(S(:));
        
Q=full(X-Y);