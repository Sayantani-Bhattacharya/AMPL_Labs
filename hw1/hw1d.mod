set I;
set J;

param food_content_min{J};
param cost{I};
param value_table{I,J};

var x{i in I} >= 0;

minimize total_cost:
    sum{i in I} cost[i] * x[i];

subject to Food_Content_Constraint{j in J}:
    sum{i in I} value_table[i,j] * x[i] >= food_content_min[j];