set N;
set ARC within {N, N};
set A;


param capacity{ARC};
param gain{ARC,A};
param gain1{ARC};
param gain2{ARC};
param supply{N,A};
param M;

var x{ARC, A} >= 0;

maximize Total_Gain:
    sum{(i,j) in ARC, k in A} (gain[i,j,k] * x[i,j,k]);

subject to Flow_Balance_1: 
    sum{(1,j) in ARC} x[1,j,1] - sum{(j,1) in ARC} x[j,1,1] <= supply[1,1] * M;

subject to Flow_Balance_8{k in A}:
    sum{(8,j) in ARC} x[8,j,k] - sum{(j,8) in ARC} x[j,8,k] >= supply[8,k] * M;  # Inflow to node 8 equals -1 (sink demand)

subject to Flow_Balance_2:
    sum{(2,j) in ARC} x[2,j,2] - sum{(j,2) in ARC} x[j,2,2] <= supply[2,2] * M;

subject to Flow_Balance{k in A, i in N: not ((i = 1 and k = 1) or (i = 8 and k = 1) or (i = 2 and k = 2) or (i = 8 and k = 2))}:
    sum {(i,j) in ARC} x[i,j,k] - sum {(j,i) in ARC} x[j,i,k] = 0;

subject to Capacity_Constraint{(i,j) in ARC}:
    sum{k in A} x[i,j,k] <= capacity[i,j];