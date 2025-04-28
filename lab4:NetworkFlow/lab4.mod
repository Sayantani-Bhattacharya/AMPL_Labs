set N;
set A within {N,N};

param capacity{A};
param supply{N};

var x{A} >= 0;

maximize total_flow:
    sum {(i,j) in A} capacity[i,j] * x[i,j];

subject to flow_balance{i in N}:
        sum {(i,j) in A} x[i,j] - sum {(j,i) in A} x[j,i] = supply[i];

subject to capacity_limit{(i,j) in A}:  
        x[i,j] <= capacity[i,j];