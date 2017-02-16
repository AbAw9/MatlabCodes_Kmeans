% C is a mxn matrix of clusters assignments.
function [P1 P2 P3 P4 P5 P6] = gSeq(P1,P2,P3,P4,P5,P6)
m=size(P1,1);i=0;
while(i<m)
    i=i+1;
    P1(i,:) = gUniqueP(P1(i,:));
    P2(i,:) = gUniqueP(P2(i,:));
    P3(i,:) = gUniqueP(P3(i,:));
    P4(i,:) = gUniqueP(P4(i,:));
    P5(i,:) = gUniqueP(P5(i,:));
    P6(i,:) = gUniqueP(P6(i,:));
end