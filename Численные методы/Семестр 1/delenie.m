function [ch,ost] = delenie(A,B)
ost=A;
if length(A) < length(B)
    ch=0;
    ost=A;
    return;
end
ch=[];
os=A;
while length(os) >= length(B)
    [ch(end+1),os]=nodPol(A,B);
    A=os;
end
ost=os;
end