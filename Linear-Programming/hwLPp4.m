% Name: Irene Chang

f = [-1 -1 0 0 0 0 0 0 0 0];
Aeq =[1 0 -1 1 -1 0 0 0 0 0;
    0 1 1 -1 0 1 -1 0 0 0;
    0 0 0 0 1 -1 0 1 -1 0;
    0 0 0 0 0 0 1 -1 0 -1];
beq = [0 0 0 0];
lb = [0 0 0 0 0 0 0 0 0 0];
ub = [16 13 10 4 12 9 14 7 20 5];
[x, max, exitflag] = linprog(f,[],[], Aeq, beq, lb, ub)

% The max flow is 24, with the following distributions:
% s to v1 : 11
% s to v2 : 13
% v1 to v2 : 3
% v2 to v1 : 4
% v1 to v3 : 12
% v3 to v2 : 0
% v2 to v4 : 12
% v4 to v3 : 7
% v3 to v5 : 19
% v4 to v5 : 5
