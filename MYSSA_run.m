% Name: Irene Chang
% Partner: Antonio, Michael


% Q1: Code from Hill Climbing that I reuse is generateInitialSolution()

global MYS_length;
global start_TEMP;
global Tfinal;

% Question 4
MYS_length = 4;
start_TEMP = 100;
Tfinal = 25;
[best_score, best_solution] = MYSSA_SimulatedAnnealing(start_TEMP);
fprintf("best score is %d, best solution is %s\n", best_score, best_solution);

 % Question 5
MYS_length = 32;
start_TEMP = 10;
[best_score, best_solution] = MYSSA_SimulatedAnnealing(start_TEMP);
fprintf("Start temp is %d, best score is %d, best solution is %s\n", start_TEMP, best_score, best_solution);
%Start temp is 10, best score is 54, best solution is 10000110100110111111100100001011

start_TEMP = 50;
[best_score, best_solution] = MYSSA_SimulatedAnnealing(start_TEMP);
fprintf("Start temp is %d, best score is %d, best solution is %s\n", start_TEMP, best_score, best_solution);
%Start temp is 50, best score is 42, best solution is 00011001011111011010111010011011

start_TEMP = 100;
[best_score, best_solution] = MYSSA_SimulatedAnnealing(start_TEMP);
fprintf("Start temp is %d, best score is %d, best solution is %s\n", start_TEMP, best_score, best_solution);
%Start temp is 100, best score is 52, best solution is 10000100101000001110111000011011

start_TEMP = 200;
[best_score, best_solution] = MYSSA_SimulatedAnnealing(start_TEMP);
fprintf("Start temp is %d, best score is %d, best solution is %s\n", start_TEMP, best_score, best_solution);
% Start temp is 200, best score is 70, best solution is 00000000000100011011001110111000

% The probabilty helps the program less prone to jump to accept a local
% optima without consider a possibility of another global optima.