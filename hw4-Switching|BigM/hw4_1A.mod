set N;
set ARC within {N, N};
set A;


param capacity{ARC};
param gain1{ARC};
param gain2{ARC};
param supply{N,A};
param M;

var x{ARC} >= 0;

maximize Total_Gain:
    sum{(i,j) in ARC} (gain1[i,j] * x[i,j]);

subject to Flow_Balance_1: 
    sum{(1,j) in ARC} x[1,j] - sum{(j,1) in ARC} x[j,1] <= supply[1,1] * M;

subject to Flow_Balance_8:
    sum{(8,j) in ARC} x[8,j] - sum{(j,8) in ARC} x[j,8] >= supply[8,1] * M;  # Inflow to node 8 equals -1 (sink demand)

subject to Flow_Balance {i in N: i != 1 and i != 8}: 
    sum {(i,j) in ARC} x[i,j] - sum {(j,i) in ARC} x[j,i] = 0;

subject to Capacity_Constraint{(i,j) in ARC}:
    x[i,j] <= capacity[i,j];