param cash_req_y0_avail;
param cash_req_y1_avail;
param cash_req_y2_avail;

param NPV_p1;
param NPV_p2;
param NPV_p3;
param NPV_p4;
param NPV_p5;

param y0_p1;
param y1_p1;
param y2_p1;

param y0_p2;
param y1_p2;
param y2_p2;

param y0_p3;
param y1_p3;
param y2_p3;

param y0_p4;
param y1_p4;
param y2_p4;

param y0_p5;
param y1_p5;
param y2_p5;

var x_p1 >= 0;
var x_p2 >= 0;
var x_p3 >= 0;
var x_p4 >= 0;
var x_p5 >= 0;

maximize total_NPV:
    NPV_p1 * x_p1 + NPV_p2 * x_p2 + NPV_p3 * x_p3 + NPV_p4 * x_p4 + NPV_p5 * x_p5;

subject to cash_req_y0:
    cash_req_y0_avail >= 
        y0_p1 * x_p1 + y0_p2 * x_p2 + y0_p3 * x_p3 + y0_p4 * x_p4 + y0_p5 * x_p5;

subject to cash_req_y1:
    cash_req_y1_avail >= 
        y1_p1 * x_p1 + y1_p2 * x_p2 + y1_p3 * x_p3 + y1_p4 * x_p4 + y1_p5 * x_p5;

subject to cash_req_y2:
    cash_req_y2_avail >= 
        y2_p1 * x_p1 + y2_p2 * x_p2 + y2_p3 * x_p3 + y2_p4 * x_p4 + y2_p5 * x_p5;

        