function pos = gUniqueP(a)

numelA = numel(a);

a = a(:);

[b ndx] = sort(a);

d = diff(b)~= 0;

d(numelA,1) = true;

pos = cumsum([1;full(d)]);

pos(numelA+1) = [];

pos(ndx) = pos;

pos = pos';
