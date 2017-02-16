function c = clmean(U,N,j,q)
i=1:N;k=ones(1,N);
n = i*((U(:,j)).^q);
d = k*((U(:,j)).^q);
c=n/d;