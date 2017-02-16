% Calculates the set of adjacent nodes to a node a;
function T = SGama(a,M)

T=zeros(1);p=0;

for i =1:length(M)
    
    if (M(a,i)~=0)&&(i~=a)
        
        p=p+1;
        
        T(p)=i;
        
    end
    
end