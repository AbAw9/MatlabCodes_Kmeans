% P is a mxn matrix of population
function P = gMbin(P,m,n)

P=reshape(P,1,m*n);

nr=ceil(n*rand());

W=gUnique(ceil(m*n*rand(1,nr)));

m1=ceil(length(dec2bin(max(P(W))))/2);

A=bitget(P(W),m1);

A=abs(A-1);

P(W)=bitset(P(W),m1,A);

P=reshape(P,m,n);