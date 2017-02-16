% P is a mxn matrix of population
function P = gCbin(P,m)
P1=P(1:2:m-1,:);
P2=P(2:2:m,:);
[B1 l2]=gDtb(P1);
[B2 l1]=gDtb(P2);
s=ceil(max(l1,l2)/2);
P1=gBtd(floor(B1/10^s)+mod(B2,10^s));
P2=gBtd(floor(B2/10^s)+mod(B1,10^s));
P(1:2:m-1,:)=P1;
P(2:2:m,:)=P2;