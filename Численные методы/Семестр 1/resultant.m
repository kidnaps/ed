function res = resultant(p,d)

n = length(p)-1;
m = length(d)-1;

t1=resultantHelp(p,m);
t2=resultantHelp(d,n);

res = det([t1;t2]);

end