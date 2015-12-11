# Name: 
bullseye()

## Examples:
bullseye(width / 2, height / 2, 200, 8);//draws a bullseye 200 pixels in diameter in the middle of the canvas with 8 rings which are each 25 pixels wide

## Description:
Draws a bullseye at the specified location. You can specify the diameter and number of rings. The rings are of equal width and alternate between red and white color.

## Syntax:
bullseye(x, y, d, n)

##Parameters: 
x	float: x-coordinate of the center of the bullseye
y	float: y-coordinate of the center of the bullseye
d	float: maximum diameter of the bullseye
n	int: the number of rings the bullseye contains

##Returns:
void

##Other notes:
The outermost ring will always be red.