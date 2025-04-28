set I;
set Commodity;
set ARCS within (I cross I);

param capacity{ARCS};
param cost{ARCS, Commodity};
param supply{I, Commodity};

var x{ARCS, Commodity} >= 0;

minimize Total_Cost:
    sum{(i,j) in ARCS, k in Commodity} cost[i,j,k] * x[i,j,k];

subject to Flow_Balance{n in I, k in Commodity}:
    sum{(n,j) in ARCS} x[n,j,k] - sum{(i,n) in ARCS} x[i,n,k] = supply[n,k];

subject to Capacity_Constraint{(i,j) in ARCS}:
    sum{k in Commodity} x[i,j,k] <= capacity[i,j];
