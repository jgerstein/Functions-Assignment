# Name: 
SolveForX

## Examples:
float SolveForX(float vf, float vo, float t) {  //float SolveForX and vf, vo, and t
  float x = (1.0/2)*(vf + vo)*t;  //float equation to solve for x
  return x;  //return the solution for x

## Description:
solves the equation for the variable x, or displacement

## Syntax:
x = 1/2(vf + vo)t

##Parameters: 
x = int or float: displacement
vf = int or float: final velocity
vo = int or float: initial velocity
t = int or float: time

##Returns:
returns the value of x, or the displacement

##Other notes:
physics equation
