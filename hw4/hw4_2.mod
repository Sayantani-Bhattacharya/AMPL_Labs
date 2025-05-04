set I;
set J;

param f{I};
param d{J};
param c{I,J};
param M;

var x{I, J} >= 0;
var y{I} >= 0 binary;


minimize Total_Cost:
    sum{i in I, j in J} c[i,j] * x[i,j] + sum{i in I} f[i] * y[i];

subject to Demand_Constraint{j in J}:
    sum{i in I} x[i,j] = d[j];

subject to Switching_Constraint{i in I, j in J}:
     x[i,j] <= y[i] * M;

