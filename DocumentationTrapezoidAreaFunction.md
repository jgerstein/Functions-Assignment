# Name: findTrapezoidArea

## Examples:
With the top base = 100, height = 100, and bottom base = 700

## Description:
Find area of trapezoid AND draw the given trapezoid.

## Syntax:
float tbase = 100; //declare variable values, plug in top length, height, and bottom length
float hght = 100;
float bbase = 700;

void setup(){
  size(800,600); //if you want to see a smaller trapezoid, decrease the size of the window! 
}

void draw(){
  background(0);
  println(findTrapezoidArea(tbase, hght, bbase));
  drawTrapezoid(tbase, hght, bbase);  //draw trapezoid 
 }

float findTrapezoidArea(float tbase, float hght, float bbase){
  float totalbase;
  float trapezoidarea; 
  totalbase = tbase + bbase; 
  trapezoidarea = totalbase * 0.5 * hght; 
  return trapezoidarea; 
}

void drawTrapezoid(float tbase, float hght, float bbase){
  stroke(random(250), random(250), random(250));
  line(width/2 - tbase/2, height/2 - hght/2, width/2 + tbase/2, height/2 - hght/2); //draw lines of trapezoid
  line(width/2 - bbase/2, height/2 + hght/2, width/2 + bbase/2, height/2 + hght/2); //keeps trapezoid drawn in the middle
  line(width/2 + tbase/2, height/2 - hght/2,width/2 + bbase/2, height/2 + hght/2);
  line(width/2 - bbase/2, height/2 + hght/2, width/2 - tbase/2, height/2 - hght/2); 
} 

##Parameters: 
Plug in top base, height, and bottom base. 

##Returns:
What type of data does it return?
Returns float value of the trapezoid area. 

##Other notes:
If drawing a smaller trapezoid (with dimensions smaller than 100), adjust the size of the window in setup. 
