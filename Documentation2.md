# Name: ballMath

## Examples:
for(int i = 0; i < num; i++){
    ball_width[i] = ballMath(ball_pos[i]);
  }

## Description:
Returns the width of the ball by using a sine function and the position.

## Syntax:
float ballMath(PVector pos){
  float wid = radius*3*sin(pos.y);
  
  if(wid < radius)
    wid = radius;

  return wid;
}

##Parameters: 
PVector pos: the position of the ball to be modified.

##Returns:
Returns a float which represents the width of the ball.