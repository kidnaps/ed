function x = methodCr(A, B)

    C = A;
    size = length(A);
    x = 1:1:size;
    
    for k = 1:1:size
        C = A;
        C(:,k) = B;
        x(k) = determinant(C)/determinant(A);
    end
end