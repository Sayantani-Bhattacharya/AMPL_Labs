set I;
set J;

param p{I};
param R{J};
param r{I,J};

var x{i in I} >= 0;     #x_i >=0

maximize Total_Profit:
    sum{i in I} p[i]*x[i];                        # math_formualtion:   sum_{i=1}^3 p_i*x_i

subject to Resource_Constraint{j in J}:
    sum{i in I} r[i,j] * x[i] <= R[j];              # math_formualtion:   sum_{i=1}^3 r_ij*x_i <= R_j for all j