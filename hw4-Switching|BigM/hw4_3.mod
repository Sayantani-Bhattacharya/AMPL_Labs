set EMPLOYEES;
set SHIFTS;
set DAYS;

param preferences{EMPLOYEES, SHIFTS} >= 0;

var x{EMPLOYEES, SHIFTS, DAYS} >= 0;

maximize Total_Preferences:
    sum {i in EMPLOYEES, j in SHIFTS, k in DAYS} preferences[i,j] * x[i,j,k];

subject to Shift_Constraint{i in EMPLOYEES, k in DAYS}:
    sum {j in SHIFTS} x[i,j,k] <= 1;                # for all index j.  # One shift per day for all employees for all days.

subject to Day_Constraint{j in SHIFTS, k in DAYS}:
    sum {i in EMPLOYEES } x[i,j,k] = 1;                # for all index i.  # Each shift will have one employee.

