set I;
set J;

param rating{i in I, j in J};

var x{i in I, j in J} binary;

maximize Total_Rating:
    sum {i in I, j in J} rating[i,j] * x[i,j];

subject to Demand_Satisfaction_Constraint{j in J}:
    sum {i in I} x[i,j] = 2;                # for all index j.

subject to Capacity_limit_Constraint{i in I}:   
    sum {j in J} x[i,j] <= 2;                # for all index i.