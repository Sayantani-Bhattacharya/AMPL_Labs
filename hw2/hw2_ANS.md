1. PART A:

ampl: include hw2_1a.run
Gurobi 11.0.3: optimal solution; objective -1580
2 simplex iterations
obj = -1580
x = 20
y = 60
z = 0

PART B:

Gurobi 11.0.3: optimal solution; objective -64.62441315
2 simplex iterations
x [*] :=
x1  1
x2  0.0892019
x3  0
x4  0
x5  0.122066
;

PART C:

Gurobi 11.0.3: optimal solution; objective 64.62441315
5 simplex iterations
obj = 64.6244

x [*] :=
x1  1
x2  0.0892019
x3  0
x4  0
x5  0.122066
;


2. ANS: 
Gurobi 11.0.3: optimal solution; objective 7.2
x [*] :=
j1  1
j2  0
j3  1
j4  0
j5  0
j6  1
j7  1
j8  0
;
y = 7

2 simplex iterations | 1 branching node
Total_Profit = 7.2



3. ANS:
Gurobi 11.0.3: optimal solution; objective 17592
8 simplex iterations
x: is the cubic meters moved from surplus i to need j, where i = 1, . . . , 4, j = 1, . . . , 7

x [*,*] (tr)
:    i1    i2    i3    i4    :=
j1     0    81   166    0
j2   259   135     0    0
j3   166     0     0   99
j4     0     0   105    0
j5    90     0     0    0
j6     0    85     0    0
j7   145     0     0    0
;

dist_total = 17592


4. ANS:
PART A:

Gurobi 11.0.3: optimal solution; objective 344
6 simplex iterations
Total_Rating = 344

x :=
i1 j1   1
i1 j2   0
i1 j3   0
i1 j4   0
i2 j1   0
i2 j2   0
i2 j3   0
i2 j4   1
i3 j1   0
i3 j2   0
i3 j3   1
i3 j4   0
i4 j1   0
i4 j2   1
i4 j3   0
i4 j4   0
;

Total_Rating = 344

PART B: 

Gurobi 11.0.3: optimal solution; objective 637
6 simplex iterations
1 branching node
Total_Rating = 637

x :=
i1 j1   1
i1 j2   0
i1 j3   0
i1 j4   1
i2 j1   0
i2 j2   1
i2 j3   0
i2 j4   1
i3 j1   1
i3 j2   0
i3 j3   1
i3 j4   0
i4 j1   0
i4 j2   1
i4 j3   1
i4 j4   0
;

Total_Rating = 637


