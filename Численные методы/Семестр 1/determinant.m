function d = determinant(A)

    size = length(A);
    d = 0;
    nvector = 2:1:size;

    if size == 1
            d = A(1);
    else
        for i = 1:1:size
                vector = [];
                k = 1;
                for j = 1:1:size
                    if j ~= i
                        vector(k) = j;
                        k = k + 1;
                    end
                end
                d = d + A(1,i) * (-1)^(i+1) * determinant((A(nvector,vector)));
        end
    end
end


