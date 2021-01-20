% Name: Irene Chang

% create a variable that hold the number of random numbers for the ease of
% changing and reusing it.
num_of_randnum = 10;

% create an array that stores 10 random numbers from 0 to 
ran_num_array= rand(1,num_of_randnum);1

% print 9 first numbers with 5 digits to the right, and a comma following
for i = 1:num_of_randnum-1
    fprintf("%1.5f, ", ran_num_array(i))
end

% print the last number with 5 digits to the right, and a new line after it
fprintf("%1.5f ", ran_num_array(num_of_randnum))
fprintf("\n")

% print out the largest number
fprintf("yeah! The largest random number is %1.5f", max(ran_num_array))
fprintf("\n")
