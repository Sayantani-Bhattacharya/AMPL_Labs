set NODES;
set ARCS within {NODES,NODES};

param cap {ARCS} >= 0;
param cost {ARCS} >= 0;
param b {NODES};

var x {ARCS} >= 0;

minimize total_cost:
    sum {(i,j) in ARCS} cost[i,j] * x[i,j];

subject to flow_balance {i in NODES}:
    sum {(i,j) in ARCS} x[i,j] - sum {(j,i) in ARCS} x[j,i] = b[i];

subject to capacity_limit {(i,j) in ARCS}:
    x[i,j] <= cap[i,j];