clc
clear
Data = xlsread('M1.xls');[Adj n]= getAdj(Data);SM = sparse(Adj);s=sum(sum(Adj));
G=zeros(n,1);
c1=[1 2 3 4 5 6]; % 6
c2=[7 17 18 19 20 21 22 23 24 32]; % 10
c3=[8 9 10 11 12 13 14 15 16]; % 9
c4=[25 26 27 28 29 30 31]; % 7
G(c1)=1;G(c2)=7;G(c3)=6;G(c4)=5;
C1(c1)=1; C1([c2 c3 c4])=2; 
C2([c1 c2])=1; C2([c3 c4])=2;
C3([c1 c3])=1; C3([c2 c4])=2;
C4([c1 c4])=1; C4([c2 c3]) =2; 
C5([c1 c2 c3])=1; C5(c4)=2;
C6([c1 c2 c4])=1; C6(c3)=2;
C7([c1 c3 c4])=1; C7(c2)=2;
A=[modularity(SM,C1,n,s);modularity(SM,C2,n,s);modularity(SM,C3,n,s);modularity(SM,C4,n,s);modularity(SM,C5,n,s);modularity(SM,C6,n,s);modularity(SM,C7,n,s)];
c1=A(1);c2=A(2);c3=A(3);c4=A(4);c5=A(5);c6=A(6);c7=A(7);

for x =1:29

    if (C1(x)~=1),C1=abs(C1-3);end;if (C2(x)~=1),C2=abs(C2-3);end;if (C3(x)~=1),C3=abs(C3-3);end;if (C4(x)~=1),C4=abs(C4-3);end;if (C5(x)~=1),C5=abs(C5-3);end;if (C6(x)~=1),C6=abs(C6-3);end;if (C7(x)~=1),C7=abs(C7-3);end;
    
    t1=sum(C1==1);t2=sum(C2==1);t3=sum(C3==1);t4=sum(C4==1);t5=sum(C5==1);t6=sum(C6==1);t7=sum(C7==1);
    
    Val=[c1/t1^2;c2/t2^2;c3/t3^2;c4/t4^2;c5/t5^2;c6/t6^2;c7/t7^2];
    
    [Val N]=sort(Val,'descend');
    
    disp([Val(1) N(1) G(x)])

end