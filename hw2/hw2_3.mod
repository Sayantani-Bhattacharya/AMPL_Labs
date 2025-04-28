set I;
set J;

param req{J};
param avail{I};
param dist{I,J};

var x{i in I, j in J} >= 0;     

minimize dist_total:
        sum {i in I, j in J} dist[i,j] * x[i,j];

subject to Demand_Satisfaction_Cons{j in J}:
    sum {i in I} x[i,j] >= req[j];                # for all index j.

subject to Capacity_limit_Constraint{i in I}:
    sum {j in J} x[i,j] = avail[i];                # for all index i.

