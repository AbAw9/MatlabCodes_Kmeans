function [P1 P2 P3 P4 P5 P6] = uniPop(c,i,n)
t=floor(n/c);m=mod(n,c);x=0;
for j=1:t
    A(((j-1)*x)+1:((j-1)*x)+c)=j;
    x=c;
end

P1=[repmat(A,i,1) randi(c,i,m)];
P2=[repmat(A,i,1) randi(c,i,m)];
P3=[repmat(A,i,1) randi(c,i,m)];
P4=[repmat(A,i,1) randi(c,i,m)];
P5=[repmat(A,i,1) randi(c,i,m)];
P6=[repmat(A,i,1) randi(c,i,m)];









% [~,P1]=sort(rand(i,n),2);
% [~,P2]=sort(rand(i,n),2);
% [~,P3]=sort(rand(i,n),2);
% [~,P4]=sort(rand(i,n),2);
% [~,P5]=sort(rand(i,n),2);
% [~,P6]=sort(rand(i,n),2);
% P1

% [A P1]=sort(rand(i,n),2);
% [A P2]=sort(rand(i,n),2);
% [A P3]=sort(rand(i,n),2);
% [A P4]=sort(rand(i,n),2);
% [A P5]=sort(rand(i,n),2);
% [A P6]=sort(rand(i,n),2);