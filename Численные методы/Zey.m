function X = Zey(A,B)

n = length(A);
e = 0.001;
X = B;
Xn = X;
q = 0;

    while (q == 0)
        for i=1:1:n
            S = B(i,1);
            for j = 1:1:n
                if i == j
                    continue
                end
                S = S - A(i,j)*Xn(j,1);
            end
            Xn(i,1) = S/A(i,i);
        end
        for k = 1:1:n
            if abs(Xn(k,1)-X(k,1)) < e
                q = 1;
            end
        end
        X = Xn;
    end
end