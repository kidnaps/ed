function res = delzero(p)
i = 1;
while (i  <= length(p))
    if (p(i)~=0)
        break;
    end
    i = i+1;
end
p(1:i-1)=[];
res = p;
end