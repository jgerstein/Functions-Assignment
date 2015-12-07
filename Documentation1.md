# Name: ballPhysics

## Examples:
for(int i = 0; i < num; i++){
	ballPhysics(ball_pos[i], ball_vel[i]);
}

## Description:
Adds a small acceleration to the object to simulate gravity, some air resistance, and bounces the ball off of the
walls.Finally, velocity is added to position.

## Syntax:
void ballPhysics(PVector pos, PVector vel){
  //add a small amount of gravity
  vel.y += 0.98;

  //bounce ball if it hits walls
  if (pos.x + radius >= width) {
    vel.x = -abs(vel.x);    //if the ball hits the right wall, assign x velocity the negative version of itself
    pos.x = width - radius;    
  } 
  else if (pos.x - radius <= 0) {
    vel.x = abs(vel.x);     //if the ball hits the left wall, assign x velocity the positive version of itself
    pos.x = radius;
  }
  if (pos.y + radius >= height) {
    vel.y = -abs(vel.y);
    pos.y = height - radius;
  }
  else if (pos.y - radius <= 0) {
    vel.y = abs(vel.y);
    pos.y = radius;
  }
  
  //small air resistance in the y direction
  vel.y *= 0.99;
  
  //add position to velocity
  pos.add(vel);
}

##Parameters: 
PVector pos: The position of the ball to be modified.
PVector vel: The velocity of the ball to be modified.

##Returns:
This function does not return a value.
