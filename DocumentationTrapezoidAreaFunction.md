# Name: findTrapezoidArea

## Examples:
With the top base = 100, height = 100, and bottom base = 700

## Description:
Find area of trapezoid.

## Syntax:
float findTrapezoidArea(float tbase, float hght, float bbase){
  float totalbase;
  float trapezoidarea; 
  totalbase = tbase + bbase; 
  trapezoidarea = totalbase * 0.5 * hght; 
  return trapezoidarea; 
}


##Parameters: 
Plug in top base, height, and bottom base, findTrapezoidArea( top base, height, bottom base). 

##Returns:
What type of data does it return?
Returns float value of the trapezoid area. 

