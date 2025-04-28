## Homework 1 Answers 
   - Sayantani Bhattacharya

1. (a) EV_quantity = 20   GC_quantity = 60   total_profit = 1580000
   (b) EV_quantity = 20   GC_quantity = 60   H_quantity = 0   total_profit = 1580000
   (c) On Changing the required hours of electric wiring and assembly for the hybrid car to be 10:
      EV_quantity = 20   GC_quantity = 0   H_quantity = 60  total_profit = 1700000


2. 
(a) Solution to 1.5.1 : 
5 simplex iterations
x_p1 = 1.2585
x_p2 = 0
x_p3 = 0
x_p4 = 0
x_p5 = 0.102041
objective function: total_NPV = 66.3265

(b) With the cash availability for years 0, 1, and 2 to be 50, 10, and 10 million, respectively
4 simplex iterations
x_p1 = 0.588235
x_p2 = 0.588235
x_p3 = 0.470588
x_p4 = 0
x_p5 = 0
objective function: total_NPV = 106.706

(c) With cash requirement of year 2 for the five projects to be 6, 12, 20, 25, and 24 respectively.
4 simplex iterations
x_p1 = 0.833333
x_p2 = 0
x_p3 = 0
x_p4 = 0
x_p5 = 0
total_NPV = 37.5


3. 
(a) 
i. (EV production quantity, GC production quantity) = (10, 20)
FEASIBLE: objective total_profit = 610000

ii. (EV production quantity, GC production quantity) = (50, 50)
INFEASIBLE:
presolve, constraint labour_limit:
        all variables eliminated, but upper bound = -200 < 0
presolve, constraint wiring_limit:
        all variables eliminated, but upper bound = -500 < 0
Infeasible constraints determined by presolve.

iii. (EV production quantity, GC production quantity) = (70, 20)
INFEASIBLE:
presolve, constraint labour_limit:
        all variables eliminated, but upper bound = -100 < 0
presolve, constraint wiring_limit:
        all variables eliminated, but upper bound = -600 < 0
Infeasible constraints determined by presolve.

(b) 
i. (x1 , x2 , x3 , x4 , x5 ) = (1.1, 0.3, 0.1, 0.4, 0.6)   INFEASIBLE
presolve, constraint cash_req_y2:
        all variables eliminated, but lower bound = 12.3 > 0
presolve, constraint cash_req_y1:
        all variables eliminated, but lower bound = 17.6 > 0
presolve, constraint cash_req_y0:
        all variables eliminated, but lower bound = 26.4 > 0
Infeasible constraints determined by presolve.


ii. (x1 , x2 , x3 , x4 , x5 ) = (0.5, 0.5, 0.3, -0.3, 0.5)
INFEASIBLE
presolve, constraint cash_req_y2:
        all variables eliminated, but lower bound = 8.5 > 0
presolve, constraint cash_req_y1:
        all variables eliminated, but lower bound = 9 > 0
presolve, constraint cash_req_y0:
        all variables eliminated, but lower bound = 26.5 > 0
Infeasible constraints determined by presolve.


iii. (x1 , x2 , x3 , x4 , x5 ) = (0.5, 0.2, 0, 0.1, 0.1)
FEASIBLE:  objective total_NPV = 55.


4. 
4 simplex iterations
x [*] :=
i1   9.42211
i2   0
i3   0.502513
i4  37.4372
;

objective total_cost = 10.0942


Formulations, model and data file of all the above quations are attched in teh submission as separate files.