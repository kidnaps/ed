function res = nod( p,d )
if(p<d)
    t=p;
    p=d;
    d=t;
end;
q=mod(p,d);
while q~=0
    p=d;
    d=q;
    q=mod(p,d);
end;
res=d;
end

