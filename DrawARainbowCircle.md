# Name: 
DrawARainbowCircle
## Examples:
void DrawARainbowCircle (float x, float y, float diam){  //create the DrawARainbowCircle function and float x, y, and diam
  ellipse(x, y, diam, diam);  //draw an ellipse
  colorMode(HSB, 360, 100, 100, 100);  //set the color to cycle through the rainbow
  fill(frameCount%360, 100, 100);  //set the fill to change by a set frame count
}

## Description:
purpose is to draw a circle in the middle of the screen that's fill color circles through the rainbow

## Syntax:
ellipse(x, y, diam, diam)

##Parameters: 
x = int or float: x-coordinate of the ellipse
y = int or float: y-coordinate of the ellipse
diam = int or float: diameter of the ellipse

##Returns:
draws a circle in the middle of the screen that's fill color goes through the colors of the rainbow

##Other notes:
visual function
