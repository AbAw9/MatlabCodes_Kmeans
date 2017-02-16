function v = dnsp(n1,n2,S)
s=S(n1,n2);s1=max(S(n1,:));s2=max(S(n2,:));
if((s>=s1)&&(s>=s2))
    v=1; 
else
    v=0; 
end