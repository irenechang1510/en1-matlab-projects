% Name: Irene Chang
% Partner: Elizabeth Cucuzzella 

% 1. Read in the data files
MG = csvread('largeNetwork.dat');

G = MG(:,1); % G is an ordered vector representing the gender of each 
% person in the work.

ncol = size(MG, 2); % number of column of matrix 
nrow = size(MG, 1); %number of row of matrix

M = MG(:,2:ncol); % M represents the social network matrix of every person

% 2.Gender analysis
% find the number of males and females in our network
num_male = numel(find(G==0)); 
num_female = numel(find(G==1));

fprintf("There are %d females and %d males in this group.\n", num_female, num_male)

% 3. Connection analysis

connect_per = sum(M); % number of connections per person

% calculate the most, least, and average number of connections
most = max(connect_per);
least = min(connect_per);
avg = mean(connect_per);
fprintf("The  most  connected  person  has  %d  connections\n", most)
fprintf("The  least  connected  person  has  %d  connections\n", least)
fprintf("On  average,  a  person  has  %1.3f  connections\n", avg)

%4. Visualization

bar(sort(connect_per))
xlabel("People")
ylabel("Number of connections")
grid on


%5. Deviation

%the people that are classified as having high/low number of connections
high_connections = find(connect_per >= (most-2));
low_connections = find(connect_per <= (least+2));

fprintf("The following individuals have a high number of connections -- ")
fprintf("%d, ", high_connections)
fprintf("\n")

fprintf("The following individuals have a low number of connections -- ")
fprintf("%d, ", low_connections)
fprintf("\n")

%6. Female vs Male
female = find(G==1); %people who are female

%%number of connections each female person has
fem_connect = sum(M(female,:),2);

male = find(G==0); %people who are male

%number of connections each male person has
male_connect = sum(M(male,:),2); 

fprintf("The number of connections for females ranges between ")
fprintf("%d and %d, ", min(fem_connect), max(fem_connect))
fprintf("with an average of %1.2f",mean(fem_connect))
fprintf("\n")

fprintf("The number of connections for males ranges between ")
fprintf("%d and %d, ", min(male_connect), max(male_connect))
fprintf("with an average of %1.2f", mean(male_connect))
fprintf("\n")

%7. Six degree of separations
fileID = fopen("largeNetworkNeighbors2.dat","w");
for i=1:nrow
    
    first_degree = find(M(i,:)); % first degree connnections of this person?
    
    % create a variable that in the end will stores all connections of 1st
    % and 2nd degree for each person, set the start value of two_degree to
    % the first_degree value, then concatenate each second_degree together
    two_degree = first_degree; 
    
    % run the loop through all first_degree connections to find
    % second_degree connections and concatenate with two_value
    for j=1:numel(first_degree)
        second_degree = find(M(first_degree(j),:)==1);
        two_degree = [two_degree second_degree];
    end 
    
    % select only unique values of the concatenated array of connections
    % and sort it
    two_degree = sort(unique(two_degree));
    
    %write to file
    fprintf(fileID, "%d,",two_degree(1:numel(two_degree)-1));
    fprintf(fileID, "%d", two_degree(numel(two_degree)));
    fprintf(fileID, "\n");
end

fclose(fileID);