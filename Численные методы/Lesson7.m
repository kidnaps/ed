A = [1,-3,2];
B = [1,-5,6];

display(evklidPoly(A,B));

A = [1, -6, 11, -6];
B = [3, -12, 11];

display(resultant(A,B));

display(differential(A));

%D = R(f,f')/a0*(-1)^(n(n-1)/2) 

A = [1, -4, 4];
B = [1, -5, 6];
C = [1, 3 , 3, 1, 0];

display(d(A));
display(d(B));
display(d(C));