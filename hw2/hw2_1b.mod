set VARS;

param c {VARS};
param A1 {VARS};
param A2 {VARS};
param A3 {VARS};

var x {i in VARS} >= 0, <= 1;

minimize obj: sum {i in VARS} c[i] * x[i];

subject to constraint1: sum {i in VARS} A1[i] * x[i] >= -25;
subject to constraint2: sum {i in VARS} A2[i] * x[i] >= -10;
subject to constraint3: sum {i in VARS} A3[i] * x[i] <= 5;
