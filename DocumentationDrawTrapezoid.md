# Name: drawTrapezoid

## Examples:
Given top base as 100, height as 100, and bottom base as 700, draw a trapezoid centered in the window. 
void drawTrapezoid(float tbase, float hght, float bbase){
  stroke(random(250), random(250), random(250));
  line(width/2 - tbase/2, height/2 - hght/2, width/2 + tbase/2, height/2 - hght/2); //draw lines of trapezoid
  line(width/2 - bbase/2, height/2 + hght/2, width/2 + bbase/2, height/2 + hght/2); //keeps trapezoid drawn in the middle
  line(width/2 + tbase/2, height/2 - hght/2,width/2 + bbase/2, height/2 + hght/2);
  line(width/2 - bbase/2, height/2 + hght/2, width/2 - tbase/2, height/2 - hght/2); 
} 
## Description:
Draws the trapezoid that the area function calculates. 

## Syntax:
void drawTrapezoid(float tbase, float hght, float bbase)


##Parameters: 
All float variables, need to put into drawTrapezoid(top base, height, bottom base).

##Returns:
Draws the trapezoid.

##Other notes:
If viewing a smaller trapezoid, adjust the size of the window to see it more clearly. 
