function x = methodGa(A, B)

V = [A, B];
asize = length(A);
vsize = length(V);

for i = 2:1:asize
    for j = 1:1:i-1
        V(i, :) = V (i,:)*V(j,j)/V(i,j) - V(j,:);
    end
end

x(asize) = V(asize, vsize)/V(asize, asize);

for i = asize-1:-1:1
    x(i) = V(i,vsize);
    for k = i+1:1:asize
        x(i) = x(i) - V(i,k)*x(k);
    end
end

end