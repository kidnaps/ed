function res = differential(A)

for i = 1:length(A)-1
    res(i) = A(i)*(length(A)-i);
end

end