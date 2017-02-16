% Calculates the node in J which is at shortest distance to all 
% other nodes in J.
function s = subshort(J,M)

n=find((J==0),1)-1;
P=J(1:n);Dis=zeros(1,n);
for i=1:n
    for j=1:n
        Dis(i)=Dis(i)+shortdist(P(i),P(j),M);
    end
end
s=J(find(Dis==min(Dis),1));