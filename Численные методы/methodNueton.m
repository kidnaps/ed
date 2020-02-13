% p - коэф для хар-го уравнения

function [S, p] = methodNueton(A)

n = length(A);

for i=1:1:n
   S(i) = trace(A^(i)); 
end

for i=1:1:n
    p(i) = -S(i)/i;
    for j=1:1:i-1
        p(i) = p(i) - p(j)*S(i-j)/i;
    end
end



end