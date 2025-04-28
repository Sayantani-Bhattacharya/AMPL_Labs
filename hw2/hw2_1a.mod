# Model file for Question 1(a)

var x >= 0;
var y >= 0;
var z >= 0;

minimize obj: -25*x - 18*y - 20*z;

subject to constraint1: -20*x - 10*y - 15*z >= -1000;
subject to constraint2: -10*x - 10*y - 20*z >= -800;
