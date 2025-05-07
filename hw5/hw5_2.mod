set ZONES;
set NODES;

set ARC within {NODES, NODES};

var x{NODES} >= 0, binary;

maximize Size:
    sum {i in NODES} x[i];

subject to Arc_Constraint {(i,j) in NODES cross NODES diff ARC: i != j}:
     x[i] + x[j] <= 1;

