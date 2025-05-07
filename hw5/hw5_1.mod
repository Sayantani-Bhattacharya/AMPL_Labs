set SITES;
set TIER;

param C {SITES, TIER};
param d {SITES, TIER};

var x {SITES, TIER} >= 0, integer;
var y {SITES, TIER} >= 0, binary;

minimize Cost:
    sum {i in SITES, j in TIER} (C[i,j] * x[i,j] + d[i,j] * y[i,j]);

subject to tier1_Constaint {i in SITES}:
     x[i,1] <= 5 * y[i,1];

subject to tier2_Constaint1 {i in SITES}:
     x[i,2] >= 5 * y[i,2];

subject to tier2_Constaint2 {i in SITES}:
     x[i,2] <= 10 * y[i,2];

subject to tier3_Constaint1 {i in SITES}:
     x[i,3] >= 10 * y[i,3];

subject to tier3_Constaint2 {i in SITES}:
     x[i,3] <= 15 * y[i,3];

subject to demand_Costraint:
     sum {i in SITES, j in TIER} x[i,j] >= 30;
