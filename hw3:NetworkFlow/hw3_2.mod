set I;
set J;

param cost{I,J};
param supply{I};
param demand{J};
param sulfur{I};
param apiG{I};
param max_req_sulfur{J};
param min_req_apiG{J};

var x{i in I, j in J} >= 0;

minimize Total_Cost:
        sum {i in I, j in J} cost[i,j] * x[i,j];

subject to Supply_Constraint{i in I}:
    sum {j in J} x[i,j] <= supply[i];                # for all index i.

subject to Demand_Constraint{j in J}:
    sum {i in I} x[i,j] >= demand[j];                # for all index j.

subject to Sulfur_Constraint{j in J}:
    (sum {i in I} sulfur[i] * x[i,j]) / (sum {i in I} x[i,j]) <= max_req_sulfur[j];               # for all index j.

subject to API_Constraint{j in J}:
    (sum {i in I} apiG[i] * x[i,j]) / (sum {i in I} x[i,j]) >= min_req_apiG[j];

    


