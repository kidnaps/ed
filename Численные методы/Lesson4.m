S = [20 10 8 3; 5 67 3 6; 0 66 92 2; 17 17 88 99];

X = reverse(S);

display(X);

%T = iteration([7 3 2; 4 8 5; 1 6 9], [19; 35; 40]);

T = Zey([7 3 2; 4 8 5; 1 6 9], [19; 35; 40]);

display(T);



A = [3 2; 1 -4];
B = [1; -16];

e = 0.001;
A = (A^(-1) - e)*A;
B = (A^(-1) - e)*B;

T = iteration(A, B);

%B = [19; 35 ; 40];
%x = [0; 0 ; 0];

%A = [1 2 3; 4 5 6; 7 8 9];

%result = determinant(A);

%display(result);

%solve = methodCr(S,B);

%display(solve);

%day = methodGa(S, B);

%display(day);