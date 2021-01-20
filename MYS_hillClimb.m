%MYS_hillClimb.m
%Name: Irene
%Partners: Erin

% Parameters: Nothing
% Returns: best_score and best_solution
% Description: Generating an initial solution and check for the best score 
% and best solution, iteratively do so until reaching the max iteration
% number, which is 5 right now
function [ best_score, best_solution] = MYS_hillClimb( )
global MYS_length;
currentSolution    =  MYS_generateInitialSolution();
currentScore    =    MEval(currentSolution);
currentIteration = 0;
maximumNumberIterations = 20;
done = false;
 %  iterative process

while (~done)
   best_score  =  currentScore; 
   best_solution = currentSolution;
   %currentSolution = MYS_generateNeighbor_simpleHillClimb(best_solution);
   currentSolution = MYS_generateNeighbor_steepestAscent(best_solution);
   currentScore = MEval(currentSolution) ;
   currentIteration  =  currentIteration+1;
   done=currentIteration >maximumNumberIterations||...
       best_score >currentScore;
end
end

% Parameters: None
% Returns: Initial solution
% Description: Randomly generate a starting binary number of length
% MYS_length
function initialSolution = MYS_generateInitialSolution()
global MYS_length;

x = randi([0 1], 1, MYS_length);
initialSolution = "";
for i = 1:MYS_length
    initialSolution = initialSolution + num2str(x(i));
end 
initialSolution = char(initialSolution);
end


% Parameters: a binary number named MYS, which is the current best
% solution
% Output: neighbor of that number
% Description: Randomly generate a neighbor for our current best solution
% by flipping one of the integers in MYS

function neighbor = MYS_generateNeighbor_simpleHillClimb(MYS)
global MYS_length;
i = randi(MYS_length);
if ( MYS(i) == '1')
    MYS(i) = '0';
else 
    MYS(i) = '1';
end
neighbor = MYS;
end


% Parameters: a binary number named MYS, which is the initial solution
% Output: the best next node
% Description: Check all the possible nearest neighbors of the initial
% solution and pick the neighbor that has the best score as the next node
function best_MYS = MYS_generateNeighbor_steepestAscent(original_MYS)
global MYS_length;
best_MYS = original_MYS;
max_score = MEval(original_MYS);
pool = [string(best_MYS)]; % to hold candidates node if many neighbors are tied
for i=1:MYS_length
    copy_MYS = original_MYS; % make a copy to modify the original MYS
    if ( copy_MYS(i) == '1')
        copy_MYS(i) = '0';
    else
        copy_MYS(i) = '1';
    end
    current_score = MEval(copy_MYS);
    if (current_score > max_score)
        max_score = current_score;
        best_MYS = copy_MYS;
        pool = [string(best_MYS)];
    elseif (current_score == max_score)
        pool = [pool string(copy_MYS)];
        
    end
end

if (numel(pool) > 1) % if tied neighbors break the tie randomly 
    best_MYS = char(pool(randi(numel(pool))));
end

end
