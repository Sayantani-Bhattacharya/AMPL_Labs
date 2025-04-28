set I;
set J;
set K;

param content{I,K};
param cost{I};
param min_req{J,K};

var x{i in I, j in J} >= 0;

minimize Total_Cost:
        sum {i in I, j in J} cost[i] * x[i,j];

subject to Demand_Satisfaction_Cons{j in J, k in K}:
    sum {i in I} content[i,k] * x[i,j] >= min_req[j,k];                # for all index j.

