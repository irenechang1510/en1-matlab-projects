%MYS_run.m
%Name: Irene Chang
%Partners: Erin Lovell

global MYS_length;
MYS_length = 32;
iteration = 100;
%{
max_score = 0;
for i=1:iteration
    [best_score best_solution] = MYS_hillClimb();
    if(best_score > max_score)
        max_score = best_score;
        final_MYS = best_solution;
    end
end

%Q3
fprintf("Q3: ")
fprintf("After %d iterations, final MYS=%s, with score=%d\n", iteration,...
    final_MYS, max_score)
%}
%{
%Q4 iteration =1, 
fprintf("Q4:\n")
for i=1:10
    max_score = 0;
    for i=1:iteration
        [best_score best_solution] = MYS_hillClimb();
        if(best_score > max_score)
            max_score = best_score;
            final_MYS = best_solution;
        end
    end

    %Q4
    fprintf("After %d iterations, final MYS=%s, with score=%d\n",...
        iteration, final_MYS, max_score)
end 
%}
%{
%Q5
[best_score best_solution] = MYS_hillClimb();
fprintf("best score is: %d", best_score)
fprintf(", best solution is: %s\n", best_solution)
%}
%{
%Q6
fprintf("Q5:\n")
for i=1:10
    max_score = 0;
    for j=1:iteration
        [best_score best_solution] = MYS_hillClimb();
        if(best_score > max_score)
            max_score = best_score;
            final_MYS = best_solution;
        end
    end
    
    fprintf("After %d iterations, final MYS=%s, with score=%d\n",...
        iteration, final_MYS, max_score)
    
end
%}