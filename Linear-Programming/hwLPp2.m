% Name: Irene Chang
% Partner: Henry Gray

f = [-1 -1];
A = [1 1;
    4 2;
    -1 1;
    -1 0;
    0 -1];
b = [4 12 1 0 0];

[x, max, exitflag] = linprog(f,A,b)
% The optimal solution is 4, with x1 = 1.5 and x2 = 2.5