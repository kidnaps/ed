function res = nodPol1( p,q )
for i=1:length(q)-1
    res(i)=p(i+1)-q(i+1);
end
res(end+1)=p()
end

