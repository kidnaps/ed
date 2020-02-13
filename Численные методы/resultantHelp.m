function res = resultantHelp(p,n)
    %for i = 1:n
    %    for j = 1:length(p)
    %        res(i,j+i-1) = p(j);
    %    end
    %end
    for i = 1:n
            res(i,i:length(p)+i-1) = p;
    end
end