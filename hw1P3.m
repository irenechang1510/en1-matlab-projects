% Name: Irene Chang
% Auditor: Michael Wu


figure
axis([0 10 0 10])
hold on
% a) Write a script that colors the rows of the grid in 
% red and white alternately.
fill([0 0 10 10], [0 10 10 0], 'w')
pause(.25)
for i=1:2:9
    fill ([0 0 10 10], [i i+1 i+1 i], 'r')
end
pause(.25)

% b)Write code in your script that creates a checkered grid in 
% black and green.
fill([0 0 10 10], [0 10 10 0], 'w')
pause(.25)
fill ([0 0 10 10], [0 10 10 0], 'g')
for i=0:2:9
    for j=0:2:9
        fill ([i i i+1 i+1], [j j+1 j+1 j], 'k')
        
    end
end


for i=1:2:9
    for j=1:2:9
        fill ([i i i+1 i+1], [j j+1 j+1 j], 'k')        
    end
end
pause(.25)

% c)Write code in your script that colors the first 4 columns of the 
% grid cyan and the remaining 6 columns red.
fill([0 0 10 10], [0 10 10 0], 'w')
pause(.25)
fill([0 0 10 10], [0 10 10 0], 'r')
fill([0 0 4 4], [0 10 10 0],'c')
pause(.25)

% d)Write code in your script that colors the diagonal 
% (upper right to lower left on the screen) yellow.
fill([0 0 10 10], [0 10 10 0], 'w')
pause(.25)
fill([0 0 10 10], [0 10 10 0], 'w')
for i=0:9
    fill([i i i+1 i+1], [i i+1 i+1 i],'y')
    
end
pause(.25)

% e) Write code in your script that colors the upper 
% triangle above this diagonal black. Include the yellow diagonal.
fill([0 0 10 10], [0 10 10 0], 'w')
pause(.25)
for i=0:9
    fill([i i i+1 i+1], [i i+1 i+1 i],'y')
    fill([i i i+1 i+1],[i+1 10 10 i+1], 'k')
    
end
pause(.25)

%f) Write code in your script that colors the lower triangle below the 
% diagonal red. Include the yellow diagonal, and black triangle. 
fill([0 0 10 10], [0 10 10 0], 'w')
pause(.25)
for i=0:9
    for j=0:i
        fill([i i i+1 i+1], [i i+1 i+1 i],'y')
        fill([i i i+1 i+1],[i+1 10 10 i+1], 'k')
        fill([i i i+1 i+1],[j-1 j j j-1], 'r')
    end
end
