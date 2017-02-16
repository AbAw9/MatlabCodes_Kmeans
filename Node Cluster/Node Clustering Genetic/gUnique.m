function b = gUnique(a)

numelA = numel(a);

a = a(:);

b=sort(a);

d = diff(b)~= 0;

d(numelA,1) = true;

b = b(d);

b = b';