function Bet = betweenness(M)
n=length(M);Bet=zeros(n,1);[N D]=all_shortest(M);
for i=1:n
    x=0;
    for j=1:n
        for k=1:n
            if(i~=j)&&(i~=k)&&(D(j,i)+D(i,k)==D(j,k))&&(D(j,k)~=0)
                s=N(j,i)*N(i,k);
                x=x+(s/N(j,k));
            end
        end
    end
    Bet(i)=x;
end