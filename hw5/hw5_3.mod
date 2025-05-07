set ITEMS;
set MODES;

param demand{ITEMS};
param deadline{ITEMS};
param penalty{ITEMS};
param M;

param cost{ITEMS, MODES};
param shipping_time{ITEMS, MODES};

var x{ITEMS, MODES} >= 0, integer;
var y{ITEMS} >= 0, binary;


minimize Cost:
    sum {i in ITEMS, j in MODES} cost[i,j] * x[i,j] + sum {i in ITEMS} penalty[i] * y[i];

subject to demand_Constaint {i in ITEMS}:
    sum {j in MODES} x[i,j] >= demand[i];

subject to deadline_Constaint {i in ITEMS}:
    sum {j in MODES} shipping_time[i,j] * x[i,j] >= deadline[i] + (1- y[i]) * M;
