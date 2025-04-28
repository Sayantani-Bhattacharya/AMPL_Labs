set SUPPLIER;
set CUSTOMER;
set WAREHOUSE;

param supplier_limit {SUPPLIER} >= 0;
param cost {SUPPLIER, CUSTOMER, WAREHOUSE} >= 0;
param capacity {WAREHOUSE} >= 0;

var x {SUPPLIER, CUSTOMER, WAREHOUSE} binary;

minimize Total_Cost:
    sum {i in SUPPLIER, j in CUSTOMER, k in WAREHOUSE}
        cost[i, j, k] * x[i, j, k];

subject to Supplier_Limit {i in SUPPLIER}:
    sum {j in CUSTOMER, k in WAREHOUSE} x[i, j, k] <= supplier_limit[i];

subject to Warehouse_Capacity {k in WAREHOUSE}:
    sum {i in SUPPLIER, j in CUSTOMER} x[i, j, k] <= capacity[k];

subject to Demand_Fulfillment {j in CUSTOMER}:
    sum {i in SUPPLIER, k in WAREHOUSE} x[i, j, k] = 1;

