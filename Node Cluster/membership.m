function u= membership(V,Adj,q,N,K)
m=2/(q-1);
u=zeros(N,K) ;
for i = 1 : N
    for j = 1 : K
        t = 0;
        x = shortdist(i,V(j),Adj);
        for k = 1 : K
            if(shortdist(i,V(k),Adj)~=0)
                t = t + (x/shortdist(i,V(k),Adj))^m;
            end
        end
        u(i,j) = 1/t;
    end
end
u(u==Inf)=0;