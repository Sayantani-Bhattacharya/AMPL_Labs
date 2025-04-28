set VARS;
set SLACKS;
set ALLVARS;

param c {ALLVARS};       
param A {1..3, ALLVARS}; 
param b {1..3};       

var x {i in VARS} >= 0, <= 1;
var s {i in SLACKS} >= 0;

maximize obj: sum {i in VARS} c[i]*x[i];

subject to constraint_eq {j in 1..3}:
    sum {i in VARS} A[j, i]*x[i] + A[j, "s" & j]*s["s" & j] = b[j];
