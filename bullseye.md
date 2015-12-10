# Name: bullseye

## Examples:
void setup() {
  size(800, 600);
  background(0);
}


void draw() {
  bullseye();
}

void bullseye(){
    fill(255);
  ellipse(width/2,height/2,120,120);
    fill(255,0,0);
  ellipse(width/2,height/2,90,90);
    fill(255);
  ellipse(width/2,height/2,60,60);

  fill(255,0,0);
  ellipse(width/2,height/2,30,30);
  
}

## Description:
Uses different sized and colored circles with  the same center point to make a bullseye.

## Syntax:
bullseye()

##Parameters: 
none

##Returns:
void

