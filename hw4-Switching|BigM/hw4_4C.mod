set TASKS;
set A within (TASKS cross TASKS);

param M;

param duration{TASKS};
param alpha{TASKS};

var x{TASKS} >= 0; #start time of the task.
var T >= 0; # Ending time of the whole project.
var y{TASKS,TASKS} >= 0 binary; # y[i,j] = 1 if task i starts before task j.

minimize Total_Completion_Time_weighted:
    T + sum{i in TASKS} (x[i] + duration[i])* alpha[i];

subject to Project_Completion_Time{i in TASKS}:
    T >= x[i] + duration[i];

subject to Precedence_Constraint{(i,j) in A}:
    x[j] >= x[i] + duration[i];

subject to Non_overlapping_Constrain1{i in TASKS, j in TASKS: i != j}:
    x[i] + duration[i] <= x[j] + M * (1 - y[i,j]);                  # for all (i,j) in A

subject to Non_overlapping_Constrain2{i in TASKS, j in TASKS: i != j}:
    x[j] + duration[j] <= x[i] + M * y[i,j]; # for all (i,j) in A