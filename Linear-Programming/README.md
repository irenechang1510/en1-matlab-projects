## Problems for Linear Programming

1/ Using the MATLAB function ‘linprog’, find values for x1 and x2 that maximize the sum x1 + x2 subject to the constraints x1 ≥ 0, x2 ≥ 0 and

- x1 + x2 <= 4

- 4x1 + 2x2  <= 12

- -x1 + x2 <= 1

2/ There are 5 different types of foods: bread, meat, potato, milk and cheese. They supply varying quantities of 3 essential nutrients: carbohydrates, fat and proteins. Table 1.1 provides details about the minimum daily requirement of the nutrients, amount of each nutrient in one serving of each food, cost per serving of each food, and calories provided by each food. Formulate this problem as a linear program that minimizes the cost of your diet. Explain your formulation in a file “hwLPp3.txt” or “hwLPp3.docx”.

3/
Princess bubblegum hired Finn as a civil engineer to analyze some of the piping under several cities in the Candy Kingdom. In each city, the network of pipes consists of several junctions (nodes) and pipes that connect the junctions. It is assumed that such networks are in steady state. That is, the incoming flow at each junction is equal to the outgoing flow. Alternatively, we can say that the difference between the incoming flow and outgoing flow is equal to zero. In this problem, we will write a linear program to determine the maximum possible flow from starting node s to the sink node t, assuming that the network operates under steady-state conditions.

a.	What are the design variables in this problem? Justify your answer 

b.	Consider a junction with two incoming pipes with flow f1 and f2, and one outgoing pipe with flow f3. Write an equation that captures the steady-state condition for this junction. (do not hand this in). 

c.	Assuming you have a pipe with flow f1. How would you write a constraint that limits the flow to be less than 50? (do not hand this in) 

d.	Consider a network of pipes with 6 nodes: s, v1, v2, v3, v4 and t. The network is used for the flow of a liquid from s to t. The pipes are equipped with valves that allow the flow of the liquid in only one direction. Each row in Table 1 represents the source node, the capacity, and the destination node of one pipe in the network. First, draw this network as a graph similar to what we did in class. Next, formulate this problem as a linear program that maximizes the flow of the liquid in the network. Turn in these as hwLPp4.pdf. Next, formulate the problem to solve using linprog with a script “hwLPp4.m”. Report the results as comments in the script file.


