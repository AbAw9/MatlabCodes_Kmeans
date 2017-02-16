function [r c] = ind2sub1(size,idx)
nrows=size(1);
r = rem(idx-1,nrows)+1;
c = (idx-r)/nrows + 1;