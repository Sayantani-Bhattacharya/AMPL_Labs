## Homework 5 Answers 
   - Sayantani Bhattacharya

1. (a)(c) Wrote in the ans.pdf

(b) 
:     x   y    :=
1 1   5   1
1 2   0   0
1 3   0   0
2 1   5   1
2 2   0   0
2 3   0   0
3 1   5   1
3 2   0   0
3 3   0   0
4 1   5   1
4 2   0   0
4 3   0   0
5 1   5   1
5 2   5   1
5 3   0   0
;

Cost = 3080

(d) I get the same answer when i minimize the larget single-cost upgrade cost.

:     x   y    :=
1 1   5   1
1 2   0   0
1 3   0   0
2 1   5   1
2 2   0   0
2 3   0   0
3 1   5   1
3 2   0   0
3 3   0   0
4 1   5   1
4 2   0   0
4 3   0   0
5 1   5   1
5 2   5   1
5 3   0   0
;

Cost = 3080

2. (a)(c) Wrote in the ans.pdf

(b)
x [*] :=
A  1
B  1
C  1
D  1
E  1
F  1
G  0
H  0
I  0
J  0
;

Largest clique Size = 6

(d)
y [*,*]
:   1   2   3   4   5   6    :=
A   1   0   0   0   0   0
B   1   0   0   0   0   0
C   0   1   0   0   0   0
D   1   0   0   0   0   0
E   0   1   0   0   0   0
F   0   0   0   1   0   0
G   0   0   0   1   0   0
H   0   0   0   0   1   0
I   0   0   0   0   0   1
J   0   0   0   0   1   0
;

Cost = 428


3. (a)(c) Wrote in the ans.pdf

(b)
x :=
1 1    0
1 2    0
1 3   84
1 4    0
1 5    0
2 1    0
2 2    0
2 3   89
2 4    0
2 5    0
3 1    0
3 2    0
3 3   91
3 4    0
3 5    0
;

y [*] :=
1  0
2  0
3  0
;

Cost = 1145

(d) Forcing item to be transferered by exactly 2 modes, keeping rest same:

x :=
1 1    1
1 2    0
1 3   84
1 4    0
1 5    0
2 1    1
2 2    0
2 3   88
2 4    0
2 5    0
3 1    1
3 2    0
3 3   90
3 4    0
3 5    0
;

y [*] :=
1  0
2  0
3  0
;

Cost = 1152

4. (a) Wrote in the ans.pdf

(b) with w = 0.5
x [*,*] (tr)
:    1    2    3    4    5     :=
1   400   0     0   0     0
2     0   0     0   0   100
3     0   0   300   0     0
4   100   0     0   0     0
5     0   0     0   0   200
6   300   0     0   0     0
7     0   0   200   0     0
8     0   0     0   0   400
;

y [*] :=
1  1
2  0
3  1
4  0
5  1
;

(c) 
w         ObjVal
0.1      -1269.4
0.2      -1016
0.3      -767
0.4      -518
0.5      -269
0.6      -26.4
0.7       214.2
0.8       454.8
0.9       682.5


Plot is attached as Ans4_PLOT

(d) Wrote in the ans.pdf

(e) x [*,*] (tr)
:   1    2    3    4    5    :=
1   0   400   0     0   0
2   0     0   0   100   0
3   0     0   0   300   0
4   0   100   0     0   0
5   0     0   0   200   0
6   0     0   0   300   0
7   0   200   0     0   0
8   0   400   0     0   0
;

y [*] :=
1  0
2  1
3  0
4  1
5  0
;

penalty_c = -695
penalty_q = 517
total_score = -89
