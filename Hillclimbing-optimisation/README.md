## Implement Hillclimbing algorithm with MATLAB

In this lesson, we learned about optimisation using Hill Climbing algorithm. We explored different variations and limitations of this algorithm in finding global and local maxima. 

In **Simple Hill Climbing**, only one of the closest neighboring solutions is selected for exploration.  If there are many closest neighbors, then one is selected at random.  This hill climbing algorithm is limited in its ability to identify a global optimum because hill climbing only explores one neighbor to see if its fitness is better than the current solution. Once the top of a hill is reached, the algorithm does not allow backtracking to explore other options. 

In **Steepest-Ascent Hill Climbing**, all neighbors are evaluated and the closest to the optimal solution is chosen. This hill climber works reasonably well as it explores all neighboring solutions, always choosing the one that gets closer to the maximum solution. 

In **Stochastic Hill Climbing**, which is used when there are too many neighbors to evaluate, a neighbor is selected at random and a decision is made to select that neighbor or move to the next one. Here, a decision has to be made how much of the neighborhood should be explored before deciding that there are no better solutions. If the size of the explored neighborhood is small, then it is possible to explore all neighbors. If the size of the neigh- borhood is expansive, then exhaustive exploration is not possible and an approximation of this exploration is necessary.

The biggest drawback of local search is the low likelihood of identifying a global optimum.

In **Random-Restart Hill Climbing**, sometimes called Shotgun Hill Climbing, hill climbing is run multiple times, each time starting with a different initial value. The best value is kept throughout the multiple runs. Random-Restart can be used with Simple Hill Climbing or any of its variations. This process of building a procedure using existing optimization heuristics is referred to as a meta-algorithm, or meta-heuristic. Thus Random- Restart Hill Climbing is a meta-heuristic. 

When hill climbing terminates, the user knows that a good solution is found, but it is never clear how close that solution is to the optimal solution. Because the global optimum is unknown, it is not possible to have a general procedure for bounding the error of the best solution found via hill climbing relative to that of the optimum solution.

### Problems to solve
Implement random re-start with the Simple Hill Climbing algorithm with MYS length being 32, iteration equals 100, loop 10 times, keeping track of the best score and the best MYS string. Results are saved in HillClimbingResults.txt

Then, implements Steepest Ascent. So, implement a new neighbor search function by updating the code from the previous part. Steppest Ascent Hillclimbing will use MYS_generateNeighbor_steepestAscent(original MYS), which goes through all the closest neighbors that are of Hamming distance 1, and pick the one that maximizes the score. If there are multiple solutions with the same maximum score, break the tie randomly. If none are better, then return original MYS. The results are also saved in HillClimbingResults.txt.

At the end of HillClimbingResults.txt, there is a paragraph that explains the differences in results between the Simple and Steepest Ascent algorithms. 


