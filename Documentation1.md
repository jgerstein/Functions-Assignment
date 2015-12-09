# Name: 
circlearea()
float area;


void setup(){
size(500,500);
background(255);
area = circlearea(5);
}

void draw(){
rect(width/2,height/2, area, area);
}

## Description:
By using this function any area of any circle, given a radius can be found. The parameter needed for this function is the radius. The radius is the distance from the center of the circle to any edge on the outside of the circle

## Syntax:
circlearea(radius)

##Parameters: 
radius int or float the value of the radius 

##Returns:
Returns the values of the area in meters^2

##Other notes:
if the radius is given in another unit it is just that unit squared
