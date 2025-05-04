set TASKS;
set A within (TASKS cross TASKS);

param M;

param duration{TASKS};
param alpha{TASKS};

var x{TASKS} >= 0; #start time of the task.
var T >= 0; # Ending time of the whole project.

minimize Total_Completion_Time_weighted:
    T + sum{i in TASKS} (x[i] + duration[i])* alpha[i];

subject to Project_Completion_Time{i in TASKS}:
    T >= x[i] + duration[i];

subject to Precedence_Constraint{(i,j) in A}:
    x[j] >= x[i] + duration[i];
