function s = ShrinkSig(u,v,M)

num=2;deno1=1;deno2=1;

for i=1:length(M)
    num=num+(M(u,i)*M(v,i));
    deno1=deno1+(M(u,i))^2;
    deno2=deno2+(M(v,i))^2;
end
s=num/sqrt(deno1*deno2);