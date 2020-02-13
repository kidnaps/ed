function X = reverse(A)

n = length(A);

X = [A, eye(n)];

for i = 2:1:n
    for j = 1:1:i-1
        X(i, :) = X(i,:) - X(j,:)*X(i,j)/X(j,j);
    end
end

for i = n-1:-1:1
    for j = n:-1:i+1
        X(i, :) = X(i,:) - X(j,:)*X(i,j)/X(j,j);
    end
end

for i = 1:1:n
    X(i,:) = X(i,:)/X(i,i);
end

X = X(1:n,n+1:n+n);

end