# Name: ballDraw

## Examples:
for(int i = 0; i < num; i++){
    ballDraw(ball_pos[i], ball_width[i]);
}

## Description:
Displays the ball on the screen using its stored data.

## Syntax:
void ballDraw(PVector pos, float ball_width){
  //set a fill based on position
  fill(pos.x, pos.y, width);
  
  ellipse(pos.x, pos.y, radius*2, ball_width);
}

##Parameters: 
PVector pos: The position of the ball to be drawn.
float ball_width: The width of the ball to be drawn.

##Returns:
This funciton does not return a value.
