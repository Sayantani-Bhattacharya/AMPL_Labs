set I;
set J;
set A within {I, J};   # Subset: Not all pair of i,j is feasible.

param c{i in I};
param d{j in J};
param t{i in I, j in J};


var x{i in I, j in J} >= 0;     # for all index.
var s{i in I} >= 0;             # for all index. # Doubt: how to add the second for all thing?


minimize total_value:
    sum {i in I} c[i]*s[i]  + sum {(i,j) in A} t[i,j] * x[i,j];

subject to Demand_Satisfaction_Cons{j in J}:
    sum {(i,j) in A} x[i,j] >= d[j];                # for all index.

subject to Capacity_limit_Constraint{i in I}:
    sum {(i,j) in A} x[i,j] <= s[i];                # for all index.

