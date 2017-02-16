% Converts decimal to binary for decimal numbers < 35000
% N is a mxn matrix of decimal numbers
function [nBin i] = gDtb(N)
nBin=0;i=0;
while(sum(sum(N))>0)
    i=i+1;r=mod(N,2);
    nBin=nBin+((10^(i-1))*r);
    N=floor(N/2);
end