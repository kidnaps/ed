% Метод Крамера решения системы

A = [7 3 2; 4 8 5; 1 6 9];
B = [19; 35 ; 40];
x = [0; 0 ; 0];

determinant = A(1,1) * A(2,2) * A(3,3)...
            + A(1,2) * A(2,3) * A(3,1)...
            + A(1,3) * A(3,2) * A(2,1)...
            - A(1,3) * A(2,2) * A(3,1)...
            - A(3,2) * A(2,3) * A(1,1)...
            - A(2,1) * A(1,2) * A(3,3);
det(A);

for k = 1:1:3
    temp = A(:,k);
    A(:,k) = B;
    x(k) = (A(1,1) * A(2,2) * A(3,3)...
            + A(1,2) * A(2,3) * A(3,1)...
            + A(1,3) * A(3,2) * A(2,1)...
            - A(1,3) * A(2,2) * A(3,1)...
            - A(3,2) * A(2,3) * A(1,1)...
            - A(2,1) * A(1,2)*A(3,3))/determinant;
    A(:,k) = temp;
end

disp(x);

% Метод Гаусса решения системы
    
V = [A, B];


V(2,:) = V(2,:) * V(1,1)/V(2,1) - V(1,:);
V(3,:) = V(3,:) * V(1,1)/V(3,1) - V(1,:);
V(3,:) = V(3,:) * V(2,2)/V(3,2) - V(2,:);

disp(V);

x(3) = V(3,4)/V(3,3);
x(2) = (V(2,4) - V(2,3) * x(3))/V(2,2);
x(1) = (V(1,4) - V(1,3) * x(3) - V(1,2)*x(2))/V(1,1);

disp(x);

% Метод обратной матрицы

%x = A^-1 * B;

M = [0 0 0; 0 0 0; 0 0 0];

for i= 1:1:3
    i1 = -1;
    i2 = -1;
        for k = 1:1:3
            if k ~= i
                if i1 == -1
                    i1 = k;
                else
                    i2 = k;
                end
            end
        end
    for j= 1:1:3
        j1 = -1;
        j2 = -1;
        for k = 1:1:3
            if k ~= j
                if j1 == -1
                    j1 = k;
                else
                    j2 = k;
                end
            end
        end
    end
    M(i,j) = A(i1,j1) * A(i2,j2) - A(i1,j2)*A(i2,j1);
end

for i= 1:1:3
    for j= 1:1:3
        if i == 1
            i1 = 2;
            i2 = 3;
        elseif i == 2
            i1 = 1;
            i2 = 3;
        else
            i1 = 1;
            i2 = 2;
        end
        
        if j == 1
            j1 = 2;
            j2 = 3;
        elseif j == 2
            j1 = 1;
            j2 = 3;
        else
            j1 = 1;
            j2 = 2;
        end
        M(i,j) = A(i1,j1) * A(i2,j2) - A(i1,j2)*A(i2,j1);
    end
end

for i = 1:1:3
    for j = 1:1:3
        if mod((i + j),2) ~= 0
            M(i,j) = M(i,j) * (-1);
        end
    end
end


temp1 = M(:,1);
temp2 = M(:,2);
temp3 = M(:,3);

M(1,:) = temp1;
M(2,:) = temp2;
M(3,:) = temp3;

M = M / determinant;

disp(M);

x = M*B;

disp(x);