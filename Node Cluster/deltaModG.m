function dQs = deltaModG(C,m,S)

TS=sum(sum(S));
US=0;
DS1=0;
DS2=0;

for i=1:length(C)
    US=US+S(C(i),m)+S(m,C(i));
    DS1=DS1+sum(S(C(i),:));
    DS2=DS2+sum(S(m,:));
end
dQs=((US)/TS)-((2*DS1*DS2)/(TS*TS));