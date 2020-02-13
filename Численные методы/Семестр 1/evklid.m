function res = evklid( p,d )
if(p<d)
    t=p;
    p=d;
    d=t;
end

q=mod(p,d);

while q~=0
    q=mod(p,d);
    p=d;
    d=q;
end
res=p;
end