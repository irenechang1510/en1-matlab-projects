% HW8: Manduca Simulated Anealing
% Name: Irene Chang, Audrey Yang

function [distance, leg, muscle] = manducaSA(initialTemp)
    global finalTemp;
    %keeps track of iteration for stopping condition, to run SA 10000 times
    currentIteration = 0;
        temp = initialTemp;
        %generates an initial solution and sets that to the current value
        [leg, muscle] = manducaGenerateInitialSolution(); 
        distance = manducaFitness(leg, muscle, 0);
        %program continues while the current temperature is greater than the
        %final temperature or when i = 10000
        while((temp > finalTemp) && currentIteration < 10000)
            %generates the neighbor of the initial solution
            [vNewL, vNewM] = manducaPermute(leg, muscle, temp);
            %deltaS represents the difference between the two solutions
            deltaS = manducaFitness(leg, muscle, 0)-manducaFitness(vNewL, vNewM, 0);
            %if deltaS is greater than 0, the current solution is set to the
            %neighbor and best score is set to the neighbor's score
            if deltaS < 0
                distance = manducaFitness(vNewL, vNewM, 0);
                leg = vNewL;
                muscle = vNewM;
            else
                %creates a probability based on the
                %e^(deltaS/current temperature)
                prob = exp(-deltaS/initialTemp);
                
                %changes the current solution to the new solution if the
                %randomly generated probability between 0 and 1 is less than
                %the probability generated above
                if rand < prob
                    distance = manducaFitness(vNewL, vNewM, 0);
                    leg = vNewL;
                    muscle = vNewM;
                end
            end
            currentIteration = currentIteration + 1;
            %updates the temperature 
            temp = updateTemp(temp);
        end
    end 

function [newTemp] = updateTemp(currTemp)
    %multiplies temperature by a constant alpha
    alpha = .999;
    newTemp = currTemp*alpha;
end

