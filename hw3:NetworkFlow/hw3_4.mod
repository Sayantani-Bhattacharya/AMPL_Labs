set N;
set K;
set ARCS within (N cross N);

param capacity{ARCS};
param supply{K, N};


var x{ARCS, K} >= 0;

maximize Total_Flow:
    sum{(i,j) in ARCS, k in K} x[i,j,k];

subject to Flow_Balance{n in N, k in K}:
    sum{(n,j) in ARCS} x[n,j,k] - sum{(i,n) in ARCS} x[i,n,k] = supply[k,n];

subject to Capacity_Constraint{(i,j) in ARCS}:
    sum{k in K} x[i,j,k] <= capacity[i,j];