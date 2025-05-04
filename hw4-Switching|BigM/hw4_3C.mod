set EMPLOYEES;
set SHIFTS;
set DAYS;

param preferences{EMPLOYEES, SHIFTS} >= 0;

var x{EMPLOYEES, SHIFTS, DAYS} >= 0 binary;

maximize Total_Preferences:
    sum {i in EMPLOYEES, j in SHIFTS, k in DAYS} preferences[i,j] * x[i,j,k];

subject to Shift_Constraint{i in EMPLOYEES, k in DAYS}:
    sum {j in SHIFTS} x[i,j,k] <= 1;                # for all index j.  # One shift per day for all employees for all days.

subject to Day_Constraint{j in SHIFTS, k in DAYS}:
    sum {i in EMPLOYEES } x[i,j,k] = 1;                # for all index i.  # Each shift will have one employee.

subject to Max_Shifts_Constraint{i in EMPLOYEES}:
    sum {j in SHIFTS, k in DAYS} x[i,j,k] <= 3;                # for all index i.  # Each employee can work at most 3 shifts in a week.

subject to Day_night_Constraint{i in EMPLOYEES, k in 1...6}:
    x[i,3,k] + x[i,1,k+1] <= 1;                # for all index i.  # Each employee can not work consecutive night and day shift.