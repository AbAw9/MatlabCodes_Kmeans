% profile on;
tic
% clc
% clear
[G1 G2 G3 G4 G5 G6 G7 G8 G9 Ga Gb GN] = cldata();
Data=xlsread('G1.xls');[Adj nodes]=getAdj(Data);SM=sparse(Adj);S=sum(sum(Adj));
opval=gFit(SM,G1,1,nodes,S);
% view(biograph(triu(Adj),[]));

psize=1200;isize=psize/24;
num=6;

% Population Initialization
[Pop1 Pop2 Pop3 Pop4 Pop5 Pop6] = RanClust(num,isize,nodes);
% [Pop1 Pop2 Pop3 Pop4 Pop5 Pop6] = uniPop(num,isize,nodes);

% Population rearrangement
[Pop1 Pop2 Pop3 Pop4 Pop5 Pop6] = ...
gSelect(Pop1,Pop2,Pop3,Pop4,Pop5,Pop6,SM,isize,nodes,S);

[m n]=size(Pop1);best=2;

for generation=1:10000
    
    % Binary Crossover and Binary Mutation
    Pop1(best+1:m,:)=gCdecA1(Pop1(best+1:m,:),m-best,n);
    Pop1(best+1:m,:)=gMdec1(Pop1(best+1:m,:),m-best,n,num);
    
    % Binary Crossover and Decimal Mutation
    Pop2(best+1:m,:)=gCdec1(Pop2(best+1:m,:),m-best,n);
    Pop2(best+1:m,:)=gMdecA1(Pop2(best+1:m,:),m-best,n,num);
    
    % Decimal Crossover and Binary Mutation
    Pop3(best+1:m,:)=gCdec1(Pop3(best+1:m,:),m-best,n);
    Pop3(best+1:m,:)=gMdec1(Pop3(best+1:m,:),m-best,n,num);
    
    % Decimal Crossover and Decimal Mutation
    Pop4(best+1:m,:)=gCdecA1(Pop4(best+1:m,:),m-best,n);
    Pop4(best+1:m,:)=gMdecA2(Pop4(best+1:m,:),m-best,n,num);
    
    % Binary Crossover and Binary Mutation
    Pop5(best+1:m,:)=gCdec1(Pop5(best+1:m,:),m-best,n);
    Pop5(best+1:m,:)=gMdecA1(Pop5(best+1:m,:),m-best,n,num);
    
    % Decimal Crossover and Decimal Mutation
    Pop6(best+1:m,:)=gCdecA1(Pop6(best+1:m,:),m-best,n);
    Pop6(best+1:m,:)=gMdecA3(Pop6(best+1:m,:),m-best,n,num);
    
    [V1 p1]=max(gFit(SM,Pop1(:,:),isize,nodes,S));
    [V2 p2]=max(gFit(SM,Pop2(:,:),isize,nodes,S));
    [V3 p3]=max(gFit(SM,Pop3(:,:),isize,nodes,S));
    [V4 p4]=max(gFit(SM,Pop4(:,:),isize,nodes,S));
    [V5 p5]=max(gFit(SM,Pop5(:,:),isize,nodes,S));
    [V6 p6]=max(gFit(SM,Pop6(:,:),isize,nodes,S));

    % Migrating Population
    I1=Pop1(p1,:);I2=Pop2(p2,:);I3=Pop3(p3,:);
    I4=Pop4(p4,:);I5=Pop5(p5,:);I6=Pop6(p6,:);
    
    % Migration
    Pop1(1:6,:)=[I2;I6;I1;I3;I4;I5];
    Pop2(1:6,:)=[I1;I3;I2;I4;I5;I6];
    Pop3(1:6,:)=[I1;I2;I3;I4;I5;I6];
    Pop4(1:6,:)=[I3;I5;I4;I2;I1;I6];
    Pop5(1:6,:)=[I4;I6;I5;I2;I3;I1];
    Pop6(1:6,:)=[I4;I5;I6;I1;I2;I3];
    
    VAL=[V1 V2 V3 V4 V5 V6]; [V pos]=max(VAL);
        
    [V opval generation/100]
  
    if(V == opval)
        break
    end
end
toc
% profile viewer