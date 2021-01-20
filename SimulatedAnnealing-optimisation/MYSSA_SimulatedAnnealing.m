% Name: Irene Chang
% Partner: Antonio, Michael

function [ best_score, best_solution] = MYSSA_SimulatedAnnealing(initial_temperature)
global Tfinal;
currentTemperature = initial_temperature;
currentSolution  = MYS_generateInitialSolution();
currentScore  =  MEval(currentSolution);
currentIteration = 0;
best_solution = currentSolution;
best_score = currentScore;

while (currentTemperature > Tfinal & currentIteration < 50)
   neighbor = MYSSA_generateNeighbor(best_solution, currentTemperature);
   deltaS = MEval(neighbor) - MEval(currentSolution);
   if (deltaS > 0)
       best_score  =  MEval(neighbor); 
       best_solution = neighbor;
   else
       probability = exp(deltaS/currentTemperature);
       if (rand < probability)
           best_score  =  MEval(neighbor); 
           best_solution = neighbor;
       end
       
   end
   
   currentTemperature = MYSSA_updateTemp(currentTemperature);
   currentIteration  =  currentIteration+1;
end

end

function initialSolution = MYS_generateInitialSolution()
global MYS_length;
x = randi([0 1], 1, MYS_length);
initialSolution = "";
for i = 1:MYS_length
    initialSolution = initialSolution + num2str(x(i));
end 
initialSolution = char(initialSolution);
end


function [new_temp] = MYSSA_updateTemp(current_temp) 
new_temp = 0.999*current_temp;
end

function [new_solution] = MYSSA_generateNeighbor(current_solution, current_temperature)
global start_TEMP;
global MYS_length;
ratio = round(current_temperature*MYS_length/start_TEMP);
for i=1:ratio
    ran_num = randi(MYS_length);
    if (current_solution(ran_num) == '1')
        current_solution(ran_num) = '0';
    else 
        current_solution(ran_num) = '1';
    end
end 
new_solution = current_solution;
end


