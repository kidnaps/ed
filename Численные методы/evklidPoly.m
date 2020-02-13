function res = evklidPoly(p,d)

if (length(p) < length(d))
    tmp = p;
    p =d;
    d = tmp; %[0,1,2]
end


[~,r] = deconv(p,d);

% функциия ifzero и delzero

while ifzero(r) == 0
    p = d;
    d = delzero(r);
    [~, r] = deconv(p,d);
end

res = d;

end