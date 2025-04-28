## Homework 3 Answers 
   - Sayantani Bhattacharya

1. (a) In the ans.pdf

(b) x :=
1 Basic      0
1 Premium    0
1 Standard   0
2 Basic      0.004
2 Premium    0.36
2 Standard   0.112
3 Basic      0
3 Premium    0
3 Standard   0
4 Basic      0.74
4 Premium    0.6
4 Standard   0.72
5 Basic      0
5 Premium    0
5 Standard   0
;

Total_Cost = 5.3888

(c) The new ingredient is very costly per unit, thus the optimal solution does not use it. And the total cost and ingredient distributioin remains same as before.

x :=
1 Basic      0
1 Premium    0
1 Standard   0
2 Basic      0.004
2 Premium    0.36
2 Standard   0.112
3 Basic      0
3 Premium    0
3 Standard   0
4 Basic      0.74
4 Premium    0.6
4 Standard   0.72
5 Basic      0
5 Premium    0
5 Standard   0
6 Basic      0
6 Premium    0
6 Standard   0
;

Total_Cost = 5.3888


2. 
(b) x :=
NIGERIA   HOUSTON     16153.8
NIGERIA   ROTTERDAM   23846.2
SAUDI     HOUSTON     13846.2
SAUDI     ROTTERDAM   26153.8
VENEZUELA HOUSTON     30000
VENEZUELA ROTTERDAM       5.31629e-09
;

Total_Cost = 3140000

(c) To meet new mandates, the company now faces a global carbon penalty associated with crude from Venezuela. This penalty is $10 per barrel.

x :=
NIGERIA   HOUSTON     10769.2
NIGERIA   ROTTERDAM   29230.8
SAUDI     HOUSTON     29230.8
SAUDI     ROTTERDAM   20769.2
VENEZUELA HOUSTON     20000
VENEZUELA ROTTERDAM       4.83525e-09
;

Total_Cost = 3370000



(d) The company decides to strategically store at least 43,000 barrels of Saudi crude

x :=
NIGERIA   HOUSTON     15056.3
NIGERIA   ROTTERDAM   23982
SAUDI     HOUSTON     16982
SAUDI     ROTTERDAM   26018
VENEZUELA HOUSTON     27961.7
VENEZUELA ROTTERDAM       4.91107e-09
;

Total_Cost = 3149000


3. 
(b)
x :=
H1 C1 Doodads   150
H1 C1 Gadgets   100
H1 C1 Widgets   250
H1 C2 Doodads     0
H1 C2 Gadgets   250
H1 C2 Widgets     0
H2 C2 Doodads    70
H2 C2 Gadgets     0
H2 C2 Widgets   100
S1 H1 Doodads   100
S1 H1 Gadgets   225
S1 H1 Widgets   200
S2 H1 Doodads    50
S2 H1 Gadgets   125
S2 H1 Widgets    50
S2 H2 Doodads    70
S2 H2 Gadgets     0
S2 H2 Widgets   100
;

Total_Cost = 6055


(c) the answers remains the same, as even before the combined capacity of supplier2 from hub1 and 2 was less than 1500. Have attached teh modified files for this.

x :=
H1 C1 Doodads   150
H1 C1 Gadgets   100
H1 C1 Widgets   250
H1 C2 Doodads     0
H1 C2 Gadgets   250
H1 C2 Widgets     0
H2 C2 Doodads    70
H2 C2 Gadgets     0
H2 C2 Widgets   100
S1 H1 Doodads   100
S1 H1 Gadgets   225
S1 H1 Widgets   200
S2 H1 Doodads    50
S2 H1 Gadgets   125
S2 H1 Widgets    50
S2 H2 Doodads    70
S2 H2 Gadgets     0
S2 H2 Widgets   100
;

Total_Cost = 6055

(d) Due to modified capacity restrictions, the cost of transporting increases.

x :=
H1 C1 Doodads   150
H1 C1 Gadgets   100
H1 C1 Widgets   250
H1 C2 Doodads     0
H1 C2 Gadgets   200
H1 C2 Widgets     0
H2 C2 Doodads    70
H2 C2 Gadgets    50
H2 C2 Widgets   100
S1 H1 Doodads   100
S1 H1 Gadgets   225
S1 H1 Widgets   200
S2 H1 Doodads    50
S2 H1 Gadgets    75
S2 H1 Widgets    50
S2 H2 Doodads    70
S2 H2 Gadgets    50
S2 H2 Widgets   100
;

Total_Cost = 6355

4. (a) 
x [*,*,A]
:   2   3   4   5   6   7   8    :=
1   1   0   0   0   .   .   .
2   .   1   0   0   0   .   .
3   .   .   1   0   0   .   .
4   .   .   .   1   0   0   .
5   .   .   .   .   1   0   0
6   .   .   .   .   .   1   0
7   .   .   .   .   .   .   1

 [*,*,B]
:   2   3   4   5   6   7   8    :=
1   0   0   0   0   .   .   .
2   .   1   0   0   0   .   .
3   .   .   1   0   0   .   .
4   .   .   .   1   0   0   .
5   .   .   .   .   1   0   0
6   .   .   .   .   .   1   0
7   .   .   .   .   .   .   0

 [*,*,C]
:   2   3   4   5   6   7   8    :=
1   0   0   0   0   .   .   .
2   .   0   0   0   0   .   .
3   .   .   1   0   0   .   .
4   .   .   .   1   0   0   .
5   .   .   .   .   1   0   0
6   .   .   .   .   .   1   0
7   .   .   .   .   .   .   1
;

Total_Flow = 17

(c) Total flow reduces to 15 with the final network being:

x [*,*,A]
:   2   3   4   5   6   7   8    :=
1   1   0   0   0   .   .   .
2   .   1   0   0   0   .   .
3   .   .   1   0   0   .   .
4   .   .   .   1   0   0   .
5   .   .   .   .   1   0   0
6   .   .   .   .   .   0   1
7   .   .   .   .   .   .   0

 [*,*,B]
:   2   3   4   5   6   7   8    :=
1   0   0   0   0   .   .   .
2   .   1   0   0   0   .   .
3   .   .   1   0   0   .   .
4   .   .   .   1   0   0   .
5   .   .   .   .   1   0   0
6   .   .   .   .   .   1   0
7   .   .   .   .   .   .   0

 [*,*,C]
:   2   3   4   5   6   7   8    :=
1   0   0   0   0   .   .   .
2   .   0   0   0   0   .   .
3   .   .   1   0   0   .   .
4   .   .   .   1   0   0   .
5   .   .   .   .   0   1   0
6   .   .   .   .   .   0   0
7   .   .   .   .   .   .   1
;

Total_Flow = 15

(d) 
x [*,*,A]
:   2   3   4   5   6   7   8    :=
1   1   0   0   0   .   .   .
2   .   1   0   0   0   .   .
3   .   .   1   0   0   .   .
4   .   .   .   1   0   0   .
5   .   .   .   .   0   1   0
6   .   .   .   .   .   0   0
7   .   .   .   .   .   .   1

 [*,*,B]
:   2   3   4   5   6   7   8    :=
1   0   0   0   0   .   .   .
2   .   1   0   0   0   .   .
3   .   .   1   0   0   .   .
4   .   .   .   1   0   0   .
5   .   .   .   .   0   1   0
6   .   .   .   .   .   0   0
7   .   .   .   .   .   .   0

 [*,*,C]
:   2   3   4   5   6   7   8    :=
1   0   0   0   0   .   .   .
2   .   0   0   0   0   .   .
3   .   .   1   0   0   .   .
4   .   .   .   1   0   0   .
5   .   .   .   .   0   1   0
6   .   .   .   .   .   0   0
7   .   .   .   .   .   .   1
;

Total_Flow = 14



Model of all files are written in the .mod file with comments.