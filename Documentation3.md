# Name: addAcceleration

## Examples:
Increase or decrease the speed that the objects move.

## Description:
Add acceleration to the objects by increasing or decreasing the velocity in each frame.

## Syntax:
void addAcceleration() {
  for (int i=0; i<count; i++) {
    if (a<=1) {
      vy[i]+=a;
    } else {
      vy[i]=1;
    }
  }

##Parameters: 
No parameters

##Returns:
No return.

##Other notes:
In my syntax, there is an if statement that will make sure the acceleration doesn't increase too much.