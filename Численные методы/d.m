function res = d(A)

res = resultant(A, differential(A)/(A(1)*(-1)^(length(A)-1*(length(A)-1-1))/2));

end