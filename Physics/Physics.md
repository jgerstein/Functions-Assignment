# Name: 
Physics - Kinematic Equation Solver

## Examples:
For initial velocity of 5, Acceleration of 2, and distance of 2, the program will display:
```
Kinematic Equation Solver
Use when Vo, a, and d are given and Vf needs to be calculated
Initial velocity (Vo): 5.0
Acceleration (a): 2.0
Distance (d): 2.0
Calculated final velocity(vf) = 5.7445626
```

## Description:
The program calculates the final velocity based on the given acceleration, initial velocity, and distance.

## Syntax:
```processing
float kinematic(float vo, float a, float d){
  float vf = sqrt(sq(vo) + 2*a*d);
  return vf;
}
```
##Parameters: 
Float vo is used to set initial velocity, float a is used to set acceleration, and d is used to set distance.
The variables are declared at the top of the code to allow easy modification of values.

##Returns:
The program returns the final velocity, or the float vf. It is calculated using the equation vf^2 = vo^2 + 2ad.


##Other notes:
N/a
