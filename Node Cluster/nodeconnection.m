function S = nodeconnection(M,k)

n = length(M);

pos = find(M(k,:)~=0);

P=zeros(n,n);

P(pos,:) = M(pos,:);

W=repmat(M(k,:),n,1);

S=sum(P.*W,2);