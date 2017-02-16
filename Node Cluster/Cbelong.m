function CL = Cbelong(u,k,n)
CL=zeros(n,k);
[~,S]=sort(u,2,'descend');
P=S(:,1);
for i=1:k
    C=find(P==i);
    x=length(C);
    CL(:,i)=[C;zeros(n-x,1)];
end