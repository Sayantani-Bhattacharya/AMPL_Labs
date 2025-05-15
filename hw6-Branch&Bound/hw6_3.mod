var x1 >=0  ;
var x2 >=2 ;
var x3 >=0 ;
var x4 >=0 ;

maximize Val:
        4*x1 - x2 - 3*x3 + 7*x4;

s.t. c1: 
        x1 + 2*x2 - 4*x3 + 3*x4 >= 7;
s.t. c2:        
        3*x1 - 4*x2 + 2*x3 + 7*x4 <= 17;                        
s.t. c3:        
        5*x1 + 3*x2 + 4*x3 + 2*x4 <= 12;
    