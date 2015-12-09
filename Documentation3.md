# Name: randomCircle

## Examples:
void setup() {
  size(800, 600);
}


void draw() {
  frameRate(2.5);
  background(0);
  randomCircle();
}

void randomCircle() {
  fill(random(255), random(255), random(255));
  float diam = random(5, 80);
  ellipse(random(width), random(height), diam, diam);
}

## Description:
Draws a circle of a random color at a random location on the canvas. The circle has a random diameter between 5 and 80.

## Syntax:
randomCircle()

##Parameters: 
none

##Returns:
void

