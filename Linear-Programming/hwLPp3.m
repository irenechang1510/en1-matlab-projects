% Name: Irene Chang
% Partner: Henry Gray

f = [2 10 1.5 3 5];
A = [-15 0 -25 -12 -8;
    -1 -7 -0.1 -5 -9;
    -4 -8 -1.5 -8 -7;
    -90 -130 -95 -120 -105;
    -1 0 0 0 0;
    0 -1 0 0 0;
    0 0 -1 0 0;
    0 0 0 -1 0;
    0 0 0 0 -1];
b = [-10 -8 -10 -300 0 0 0 0 0];
[x min exitflag] = linprog(f,A,b)

% the minimum cost is 6.48, the optimal choices is 1.17g of potato and 1.58
% g of milk, 0g on meat, cheese and bread.