function Bet = betweenness(M)
n=length(M);
Bet=zeros(n,1);
[D N]=all_shortest(M);
for i=1:n
    for j=1:n
        for k=1:n
            if(i~=j)&&(j~=k)&&(D(j,i)+D(i,k)==D(j,k))
                Bet(i)=Bet(i)+((N(j,i)*N(i,k))/N(j,k));
            end
        end
    end
end
