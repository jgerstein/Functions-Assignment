# Name: y()

## Examples:
PVector p1 = new PVector(10,25);
PVector p2 = new PVector(50,35);
line(0, y(p1.x,p1.y,p2.x,p2.y,0), width, y(p1.x,p1.y,p2.x,p2.y,width));

## Description:
Assigns the y value where a point at a specified x value falls on the line created between two other points. Based on the slope determined as rise (p2y-p1y) over run (p2x-p1x).

## Syntax:
y(p1x,p1y,p2x,p2y,x)

##Parameters: 
p1x       float: x position of the first point
p1y       float: y position of the first point
p2x       float: x position of the second point
p2y       float: y position of the second point
x         float: x position of point needing y value assigned

##Returns:
float
