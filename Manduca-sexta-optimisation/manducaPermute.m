% HW8: Manduca Permute 
% Name: Irene Chang, Audrey Yang

function [newSolL, newSolM] = manducaPermute(currLeg,currMusc, currTemp)
    global initialTemp;
    global leg_length;
    global muscles_length;
    global multiplier;
    
  %the L represents the leg's attributes, and M represents muscles'
  %attributes
    tempRatioL = ((currTemp/initialTemp)*leg_length*multiplier);
    tempRatioM  = ((currTemp/initialTemp)*muscles_length*multiplier);
    flipRatioL = round(tempRatioL);
    flipRatioM = round(tempRatioM);
    
  %randomly flip the bits in legs and muscle matrices.
    for i = 1:flipRatioL
        colIndex = randi(leg_length);
        rowIndex = randi(10);
        if(currLeg(rowIndex, colIndex) == 1)
            currLeg(rowIndex, colIndex) = 0;
        else
            currLeg(rowIndex, colIndex) = 1;
        end
    end
    
    for i = 1:flipRatioM
        colIndex = randi(muscles_length);
        rowIndex = randi(10);
        if(currMusc(rowIndex, colIndex) == 100)
            currMusc(rowIndex, colIndex) = 0;
        else
            currMusc(rowIndex, colIndex) = 100;
        end
    end
    
  %checking for the constraints
  %check if there are at least two locked legs at a given interval
    for i = 1:10
        if (numel(find(currLeg(i,:)== 1)) <2)
            id = randi(leg_length);
            if(currLeg(i, id)== 0)
                currLeg(i,id) = 1;
            end
        end
        if (numel(find(currLeg(i,:)==1)) == 5)
            id = randi(leg_length);
            currLeg(i, id) = 0;
        end
        
            
    end
  
% make sure that any muscle between 2 locked legs must be contracted
    for i = 1:10
        for j = 1:leg_length-1
            if(currLeg(i, j) == 1) && (currLeg(i,j+1) == 1)
                currMusc(i,j) = 0;
            end
        end
    end
  
% make sure the front and back legs are not locked at the same time
    for i = 1:10
        if (currLeg(i,1) == currLeg(i,leg_length) && currLeg(i,1) == 1) 
            r = randi(2);
            if r == 2
                currLeg(i,leg_length) = 0;
            else 
                currLeg(i, 1) = 0;
            end
            if (numel(find(currLeg(i,:)== 1)) <2)
                num = randi(3)+1;
                currLeg(i, num) = 1;
            end
        end
    end
    
  %make sure every row has at least 1 actuated muscle
    for i = 1:10 
        while (numel(find(currMusc(i,:)==100)) <1)
            id = randi(muscles_length);
            if((currLeg(i, id) ~= 1) || (currLeg(i,id+1) ~= 1))
                currMusc(i,id) = 100;        
            end
        end
    end
    
%assign the modified matrices to the returned matrices
    newSolL = currLeg;
    newSolM = currMusc;
end