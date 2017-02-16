% P is a mxn population matrix
function P= gMdecA2(P,m,n,c)

% r1=randi(m,1);
% 
% W=randi(m*n,1,r1);
% 
% P(W)=randi(c,1,length(W));

r1=ceil(m*rand());

W=ceil(m*n*rand(1,r1));

P(W)=ceil(c*rand(1,length(W)));


P=reshape(P,m,n);