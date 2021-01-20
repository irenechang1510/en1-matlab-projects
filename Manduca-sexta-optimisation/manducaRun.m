% HW8: Manduca Run
% Name: Irene Chang, Audrey Yang

%initializing all the global variables
global finalTemp; %stopping condition
global initialTemp; %starting temperature
global leg_length; %number of legs in the manduca
global muscles_length; %number of muscles in the manduca
global multiplier; %multplier for the temperature ratio

initialTemp = 3.8;  
finalTemp = 0.5;
leg_length = 5;
muscles_length = 4;
multiplier = 0.5;

%10 random restarts for manducaSA
bestScore = 0;
max = 10;
    for i = 1:max
        [score, leg, muscle] = manducaSA(initialTemp);
        fprintf('%d: score %f\n', i, score);
        if(score > bestScore)
            bestScore = score;
            bestleg = leg;
            bestmusc  = muscle;
        end
    end
    fprintf('After %d random restarts with temperature of %d: \nbest score: %d\n', max, initialTemp, bestScore);

%{
%we used arrays of different parameter values and used for loops to try
out to see which combinations of parameters yield better results. The above
combination of parameters generally yield better results.
-finalTemp_arr = [1 10 15 20 25];
-initialTemp_arr = [200 250 300 700 1500 80 3.79 3.75 5.1 4.96];
-multiplier_arr = [0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9];   
%}