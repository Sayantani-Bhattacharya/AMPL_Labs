## Homework 4 Answers 
   - Sayantani Bhattacharya

1. (a) In the ans.pdf and attached as .mod file.

(b)
x :=
1 2   11
1 3   10
2 4    8
2 5    3
3 4    2
3 6    8
4 7   10
5 7    5
6 5    2
6 8    9
7 6    3
7 8   12
;

Total_Gain = 100.4

(c) In the ans.pdf and attached as .mod file.

(d)  The gain of 2 is less than gain by commodity1, do to maximize gain and respect the capacity, there is very little change made by the presense of other commodity.

x [*,*,1]
:   2    3    4   5   6   7    8     :=
1   11   10   .   .   .   .    .
2   .    .    8   3   .   .    .
3   .    .    2   .   8   .    .
4   .    .    .   .   .   10   .
5   .    .    .   .   .    3   .
6   .    .    .   0   .   .     9
7   .    .    .   .   1   .    12

 [*,*,2]
:   2   3   4   5   6   7   8    :=
1   0   0   .   .   .   .   .
2   .   .   0   0   .   .   .
3   .   .   0   .   0   .   .
4   .   .   .   .   .   0   .
5   .   .   .   .   .   2   .
6   .   .   .   2   .   .   0
7   .   .   .   .   2   .   0
;

Total_Gain = 102.8


2. 

(a) (c) In the ans.pdf
(b)  x [*,*] (tr)
:    1    2   3    4     5     :=
1   400   0   0     0     0
2   100   0   0     0     0
3     0   0   0     0   300
4     0   0   0   100     0
5     0   0   0     0   200
6   300   0   0     0     0
7     0   0   0   200     0
8     0   0   0   400     0
;

y [*] :=
1  1
2  0
3  0
4  1
5  1
;

Total_Cost = 886

(d)
x [*,*] (tr)
:    1     2    3    4     5     :=
1   400     0   0     0     0
2     0   100   0     0     0
3     0     0   0     0   300
4     0     0   0   100     0
5     0     0   0     0   200
6   300     0   0     0     0
7     0     1   0   199     0
8     0     0   0   400     0
;

y [*] :=
1  1
2  1
3  0
4  1
5  1
;

Total_Cost = 895.1


3. 
(a) (c) In the ans.pdf
(b)
x [*,Afternoon,*]
:   1   2   3   4   5   6   7    :=
1   0   0   0   0   0   0   0
2   0   0   0   0   0   0   0
3   0   0   0   0   0   0   0
4   0   0   0   0   0   0   0
5   0   0   0   0   0   0   0
6   0   0   0   0   0   0   0
7   0   0   0   0   0   0   0
8   1   1   1   1   1   1   1

 [*,Morning,*]
:   1   2   3   4   5   6   7    :=
1   0   0   0   0   0   0   0
2   0   0   0   0   0   0   0
3   0   0   0   0   0   0   0
4   0   0   0   0   0   0   0
5   0   0   0   0   0   0   0
6   0   0   0   0   0   0   0
7   1   1   1   1   1   1   1
8   0   0   0   0   0   0   0

 [*,Night,*]
:   1   2   3   4   5   6   7    :=
1   1   1   1   1   1   1   1
2   0   0   0   0   0   0   0
3   0   0   0   0   0   0   0
4   0   0   0   0   0   0   0
5   0   0   0   0   0   0   0
6   0   0   0   0   0   0   0
7   0   0   0   0   0   0   0
8   0   0   0   0   0   0   0
;

Total_Preferences = 105


(d)
x [*,Afternoon,*]
:   1   2   3   4   5   6   7    :=
1   0   0   0   0   0   0   0
2   0   0   1   1   0   0   0
3   0   1   0   0   0   0   1
4   0   0   0   0   0   0   0
5   0   0   0   0   0   0   0
6   0   0   0   0   0   0   0
7   0   0   0   0   0   0   0
8   1   0   0   0   1   1   0

 [*,Morning,*]
:   1   2   3   4   5   6   7    :=
1   0   0   0   0   0   0   0
2   0   0   0   0   0   0   0
3   0   0   0   0   0   0   0
4   0   1   1   1   0   0   0
5   0   0   0   0   0   0   0
6   1   0   0   0   0   0   0
7   0   0   0   0   1   1   1
8   0   0   0   0   0   0   0

 [*,Night,*]
:   1   2   3   4   5   6   7    :=
1   0   1   0   0   1   1   0
2   0   0   0   0   0   0   1
3   0   0   0   0   0   0   0
4   0   0   0   0   0   0   0
5   1   0   1   1   0   0   0
6   0   0   0   0   0   0   0
7   0   0   0   0   0   0   0
8   0   0   0   0   0   0   0
;

Total_Preferences = 101


4. 
(a) (c) In the ans.pdf
(b)
x [*] :=
1   0
2   4
3   4
4   7
5   6
6  12
7  16
8   9
;

Total_Completion_Time_weighted = 107.2

(d)
x [*] :=
1   0
2   9
3   4
4  12
5   6
6  17
7  21
8  23
;

Total_Completion_Time_weighted = 149.3

