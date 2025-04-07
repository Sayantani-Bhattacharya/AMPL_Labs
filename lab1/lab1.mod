param profit_x;
param profit_y;

param labour_x;
param labour_y;
param machine_x;
param machine_y;

param total_labour;
param total_machine;


var x>=0;
var y>=0;

maximize total_profit: profit_x * x + profit_y *y;

subject to labour_constraint: labour_x * x + labour_y * y <= total_labour;
subject to machine_constraint: machine_x * x + machine_y * y <= total_machine;





