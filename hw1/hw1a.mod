param selling_price_EV;
param selling_price_GC;
param wiring_cap_EV;
param wiring_cap_GC;
param labour_EV;
param labour_GC;
param wiring_cap;
param labour_cap;

var EV_quantity >= 0;
var GC_quantity >= 0;

maximize total_profit:
    selling_price_EV * EV_quantity + selling_price_GC * GC_quantity;

subject to wiring_limit: 
    wiring_cap_EV * EV_quantity + wiring_cap_GC * GC_quantity <= wiring_cap;

subject to labour_limit:
    labour_EV * EV_quantity + labour_GC * GC_quantity <= labour_cap;