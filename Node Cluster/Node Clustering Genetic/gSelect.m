% P is a mxn matrix of population
function [P1 P2 P3 P4 P5 P6] = gSelect(P1,P2,P3,P4,P5,P6,SM,x,N,S)

% [~,N1]=sort(gFit(SM,P1,x,N,S),'descend');P1=P1(N1,:);
% 
% [~,N2]=sort(gFit(SM,P2,x,N,S),'descend');P2=P2(N2,:);
% 
% [~,N3]=sort(gFit(SM,P3,x,N,S),'descend');P3=P3(N3,:);
% 
% [~,N4]=sort(gFit(SM,P4,x,N,S),'descend');P4=P4(N4,:);
% 
% [~,N5]=sort(gFit(SM,P5,x,N,S),'descend');P5=P5(N5,:);
% 
% [~,N6]=sort(gFit(SM,P6,x,N,S),'descend');P6=P6(N6,:);

% % gFit(M,C,x,N,S,K)
% 
[A N1]=sort(gFit(SM,P1,x,N,S),'descend');P1=P1(N1,:);

[A N2]=sort(gFit(SM,P2,x,N,S),'descend');P2=P2(N2,:);

[A N3]=sort(gFit(SM,P3,x,N,S),'descend');P3=P3(N3,:);

[A N4]=sort(gFit(SM,P4,x,N,S),'descend');P4=P4(N4,:);

[A N5]=sort(gFit(SM,P5,x,N,S),'descend');P5=P5(N5,:);

[A N6]=sort(gFit(SM,P6,x,N,S),'descend');P6=P6(N6,:);