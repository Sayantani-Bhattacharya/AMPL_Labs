set ZONES;
set NODES;

set ARC within {NODES, NODES};
set ZONE_ARC within {NODES, ZONES};
param c {ZONES} >= 0;

var y{NODES, ZONES} >= 0, binary;

maximize Cost:
    sum {i in NODES, j in ZONES} y[i,j]*c[j];

subject to Node_Constraint{i in NODES}:
    sum {j in ZONES} y[i,j] = 1;

subject to var_Constraint1{(i,z) in ZONE_ARC}:
    y[i,z] >= 0;

subject to var_Constraint2{(i,z) in NODES cross ZONES diff ZONE_ARC}:
    y[i,z] = 0;