function g = gorner(p,x)

[~,length] = size(p);

b(1)=p(1);

for i=2:length
    b(i)=p(i)+b(i-1)*x;
end

g=b(end);

end