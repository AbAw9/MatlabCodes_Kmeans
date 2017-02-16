% Converts binary to decimal for binary numbers < 10^15
% N is a mxn matrix of binary numbers
function nDec = gBtd(N)
t=0;nDec=0;
while(sum(sum(N))>0)
    t=t+1;r=mod(N,10);
    nDec=nDec+(r*(2^(t-1)));
    N=floor(N/10);
end