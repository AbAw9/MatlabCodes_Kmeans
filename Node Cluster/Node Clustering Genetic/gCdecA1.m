% P is a MxN population matrix
% Three point crossover
function P = gCdecA1(P,m,n)
if(rand<0.5)
    cross1=ceil(n/3);cross2=ceil(2*n/3);
    P1=P(1:2:m-1,:);
    P2=P(2:2:m,:);
    C1=[P1(:,1:cross1) P2(:,cross1+1:cross2) P1(:,cross2+1:n)];
    C2=[P2(:,1:cross1) P1(:,cross1+1:cross2) P2(:,cross2+1:n)];
    P=[C1;C2];
end