function [ch,ost] = nodPol(A,B)
ch=A(1)/B(1);
q=ch*B;
ost=A;
for i=1:length(q)
    ost(i)=A(i)-q(i);
end
ost(1)=[];
end