set SITES;
set LOCATIONS;

param W;       # weight of objective functions.
param M;       # big M constant


param fixed_cost{SITES};
param var_cost{SITES,LOCATIONS};
param audit_req{LOCATIONS};
param quality_score{SITES,LOCATIONS};

var x{SITES,LOCATIONS} >=0 integer;
var y{SITES} binary; 

minimize total_score:
    ( (sum{i in SITES, j in LOCATIONS} var_cost[i,j]*x[i,j])  + sum{i in SITES} (fixed_cost[i]*y[i])  )  * W   - (sum{i in SITES, j in LOCATIONS} quality_score[i,j] * x[i,j]) * (1-W) ;

subject to audit_req_constraint{j in LOCATIONS}:
        sum{i in SITES} x[i,j] = audit_req[j];

subject to site_capacity_constraint{i in SITES}:
        sum{j in LOCATIONS} x[i,j] <= 0 + M * y[i];