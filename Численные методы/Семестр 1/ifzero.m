function res = ifzero(p)
res = 1;
    for i = 1:length(p)
        if p(i) ~= 0
            res = 0;
            return;
        end
    end
end