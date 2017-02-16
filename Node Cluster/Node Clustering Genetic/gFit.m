% C is a mxn matrix of nodes and clusters

function Q = gFit(SM,C,x,n,s)

Q=zeros(x,1);
L=max(C,[],2);

for i=1:1:x
    
    m=L(i);
    

    P=zeros(m*n,1);
    P(C(i,:) + (0:m:(n-1)*m))=1;
    P=reshape(P,m,n);
    
    P=sparse(P); % 1
    
    A=P*SM; % 4
    
    E=(A*P')/s; % 3

    X=sum(diag(E));
    
    S=E*E; % 2
    
    Y=sum(S(:));
        
    Q(i)=X-Y;
end
