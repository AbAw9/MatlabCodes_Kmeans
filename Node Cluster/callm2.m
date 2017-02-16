clc
Data = xlsread('M2.xls');
[Adj n]= getAdj(Data);
SM = sparse(Adj);
s=sum(sum(Adj));

c1=[1 2 3 4 5 6 7 8 9];
c2=[10 11 12 13 14 15 16 17];
c3=[18 19 20 21 22];
c4=[28 23 24 25 26 27 29];
c5=[30 31 32 33 34 35 36];
c6=[37 38 39 40 41 42];

C1(c1)=2;C1([c2 c3 c4 c5 c6])=1;
C2([c1 c2])=1; C2([c3 c4 c5 c6])=2;
C3([c1 c2 c3])=1; C3([c4 c5 c6])=2;
C4([c1 c2 c3 c4])=1; C4([c5 c6])=2;
C5([c1 c2 c3 c4 c5])=1; C5(c6) =2; 
C6([c1 c2 c4])=1; C6([c3 c5 c6])=2;
C7([c1 c2 c5])=1; C7([c3 c4 c6])=2;
C8([c1 c2 c6])=1; C8([c3 c4 c5])=2;
C9([c2 c3 c4])=1; C9([c1 c5 c6])=2;
C10([c2 c3 c5])=1; C10([c1 c2 c6])=2;
C11([c2 c3 c5])=1; C11([c1 c4 c6])=2;
C12([c3 c4 c5])=2; C12([c1 c2 c6])=1;
C13([c3 c4 c6])=2; C13([c1 c2 c5])=1;
C14([c4 c5 c6])=2; C14([c1 c2 c3])=1;
C15([c1 c2 c3 c4])=1; C15([c5 c6])=2;
C16([c1 c2 c3 c5])=1; C16([c4 c6])=2;
C17([c1 c2 c3 c6])=1; C17([c4 c5])=2;
C18([c1 c2 c4 c5])=1; C18([c3 c6])=2;
C19([c1 c2 c4 c6])=1; C19([c3 c5])=2;
C20([c1 c2 c5 c6])=1; C20([c3 c4])=2;
C21([c1 c3 c4 c5])=2; C21([c2 c6])=1;
C22([c1 c3 c4 c6])=2; C22([c2 c5])=1;
C23([c1 c3 c5 c6])=2; C23([c2 c4])=1;
C24([c1 c4 c5 c6])=2; C24([c2 c3])=1;
C25([c1 c2 c3 c4 c5])=1; C25(c6)=2;
C26([c1 c2 c3 c4 c6])=1; C26(c5)=2;
C27([c1 c2 c3 c5 c6])=1; C27(c4)=2;
C28([c1 c2 c4 c5 c6])=1; C28(c3)=2;
C29([c1 c3 c4 c5 c6])=2; C29(c2)=1;


P=[modularity(SM,C1,n,s)/(sum(C1==1))^2
modularity(SM,C2,n,s)/(sum(C2==1))^2
modularity(SM,C3,n,s)/(sum(C3==1))^2
modularity(SM,C4,n,s)/(sum(C4==1))^2
modularity(SM,C5,n,s)/(sum(C5==1))^2
modularity(SM,C6,n,s)/(sum(C6==1))^2
modularity(SM,C7,n,s)/(sum(C7==1))^2
modularity(SM,C8,n,s)/(sum(C8==1))^2
modularity(SM,C9,n,s)/(sum(C9==1))^2
modularity(SM,C10,n,s)/(sum(C10==1))^2
modularity(SM,C11,n,s)/(sum(C11==1))^2
modularity(SM,C12,n,s)/(sum(C12==1))^2
modularity(SM,C13,n,s)/(sum(C13==1))^2
modularity(SM,C14,n,s)/(sum(C14==1))^2
modularity(SM,C15,n,s)/(sum(C15==1))^2
modularity(SM,C16,n,s)/(sum(C16==1))^2
modularity(SM,C17,n,s)/(sum(C17==1))^2
modularity(SM,C18,n,s)/(sum(C18==1))^2
modularity(SM,C19,n,s)/(sum(C19==1))^2
modularity(SM,C20,n,s)/(sum(C20==1))^2
modularity(SM,C21,n,s)/(sum(C21==1))^2
modularity(SM,C22,n,s)/(sum(C22==1))^2
modularity(SM,C23,n,s)/(sum(C23==1))^2
modularity(SM,C24,n,s)/(sum(C24==1))^2
modularity(SM,C25,n,s)/(sum(C25==1))^2
modularity(SM,C26,n,s)/(sum(C26==1))^2
modularity(SM,C27,n,s)/(sum(C27==1))^2
modularity(SM,C28,n,s)/(sum(C28==1))^2
modularity(SM,C29,n,s)/(sum(C29==1))^2];
[P N]=sort(P,'descend');
[P N]
