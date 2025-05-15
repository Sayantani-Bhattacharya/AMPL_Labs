set SITES;
set TIER;

param C {SITES, TIER};
param d {SITES, TIER};
param W;
param q {SITES, TIER};

var x {SITES, TIER} >= 0, integer;
var y {SITES, TIER} >= 0, binary;
var Penalty1 >= 0;
var Penalty2 >= 0;
var ViolationMax >= 0 integer;

minimize Cost:
     ViolationMax;
    
subject to Penalty1_Constaint:
    (sum {i in SITES, j in TIER} C[i,j] * x[i,j]+sum {i in SITES, j in TIER} d[i,j] * y[i,j] ) - 1000 = Penalty1 ;

subject to Penalty2_Constaint:
     (sum {i in SITES, j in TIER} q[i,j] * x[i,j]) - 1000 = Penalty2 ;

subject to maxViolation_Constaint1:
    ViolationMax >= Penalty1;

subject to maxViolation_Constaint2:
     ViolationMax >=  Penalty2;

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
