set J;

param profit{J};
param cpu{J};
param personDays{J};

var x{j in J} binary;
var y >= 7;

maximize Total_Profit:
    sum{j in J} profit[j]*x[j];

subject to CPU_Constraint:
    sum{j in J} cpu[j]*x[j] <= 1000;

subject to PersonDays_Constraint:   
    sum{j in J} personDays[j]*x[j] >= 240*y;

subject to Total_projects_Constraint:
    sum{j in J} x[j] >= 3;

subject to favorite_project_Constraint:
    x['j3'] + x['j4'] + x['j5'] + x['j8'] >= 1; 

subject to max_team_strength_Constraint:
    y <= 10;