% Name: Irene Chang

%a) Accumulate sum 
% create a variable that holds the number of n, for ease of changing and
% reusing. Set the start sum to be 0
n=5;
sum=0;

% Accumulate number 2 n times first, then number 3 n-1 times, and 
% so on up to number n+1
for i=2:n+1
    for j= 1:n-i+2
        sum=sum+i;
    end
end
disp(sum)

%b) How many counts?
% set the count to be 0 at the beginning
count=0;

% Count how many number 2 first (n), then how many number 3 (n-1)
% and so on, up to number n+1 (1)
for i=2:n+1
    for j= 1:n-i+2
        count=count+1;
    end
end
disp(count)
