% Calculates the shortest distance between the nodes a & b 
% using the adjacency matrix M
function d = shortdist(a,b,M)
n=length(M);Q=inf(n,1);Q(b)=0;
for j=1:1:n
    [~,P]=sort(Q);
    minp=P(j);
    for m=1:n
        if(M(minp,m)~=0)&&(Q(m)>Q(minp)+M(minp,m))
            Q(m)=Q(minp)+M(minp,m);
        end
    end
end
d=Q(a);