# Name: springInMyStep

## Examples:
springInMyStep(807.7,0.13,'w')
springInMyStep(8.32,600,'x')
springInMyStep(10,3.56,'k')

## Description:
Solves for the indicated variable (w, k, or x) using variations of the physics equation for work done to a spring: w = 0.5*k*sq(x).

## Syntax:
springInMyStep (value1, value2, character)

##Parameters: 
value1      float: first numerical value
value2      float: second numerical value
character   float: the letter corresponding to what variable is being solved for

##Returns:
Returns float for isolated variable.

##Other notes:
value1 and value2 can represent any one of the three variables because they stand for the known values, not w, k, or x individually.
