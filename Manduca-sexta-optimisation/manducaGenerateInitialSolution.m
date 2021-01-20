% HW8: Manduca Generate Initial Solution
% Name: Irene Chang, Audrey Yang

function [leg, muscles] = manducaGenerateInitialSolution()  
global leg_length;
global muscles_length;
initialSolutionL = [];
initialSolutionM = [];
% generate initial solutions for legs and muscles by randomly generate
% arrays of values of either 1 and 0 and bind them into the leg and muscles
% matrices. 
%the L represents the leg's attributes, and M represents muscles'attributes
    for i=1:10
        randNumsL = randi(2, 1, leg_length) - 1;
        initialSolutionL = [initialSolutionL; randNumsL];
    end
    for i=1:10
        randNumsM = (randi(2, 1, muscles_length) - 1);  
        initialSolutionM = [initialSolutionM; randNumsM];
    end
    %Check for the conditions that at least two legs have to be
    %locked at any time.
    for i = 1:10
        if (numel(find(initialSolutionL(i,:))) <2)
            id = randi(leg_length);
            if(initialSolutionL(i, id)== 0)
                initialSolutionL(i,id) = 1;
            end
        end
    end
    initialSolutionM = 100*initialSolutionM; %muscles have to be either 100 or 0
    muscles = initialSolutionM;
    leg = initialSolutionL;
end