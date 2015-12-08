# Name:
Visual - The Wanderer with color

## Examples:
N/A

## Description:
The program uses the Wanderer code as a function.
Color was added based on the location of the ball.

## Syntax:
```processing
void wanderer(){ //reuse code from wanderer
  background(0);
  acc = PVector.random2D();  
  acc.mult(0.9);
  
  //draw ball
  ellipse(loc.x, loc.y, 25, 25);
  
  //fill with color
  fill(loc.x, loc.y, 100);
  
  //add velocity to position
  loc.x += vel.x;
  loc.y += vel.y;
  vel.x += acc.x;
  vel.y += acc.y;
  
  //wrap the ball's position
  if (loc.x  >= width) {
    vel.x = -abs(vel.x);     
  } else if (loc.x <= 0) {
    vel.x = abs(vel.x);
  }
  if (loc.y >= height) {
    vel.y = -abs(vel.y);
  } else if (loc.y <= 0) {
    vel.y = abs(vel.y);
  }
  
}
```

##Parameters: 
N/A

##Returns:
The wanderer function returns the location of the ball, which is executed in the draw function.

##Other notes:
N/A
