# Name: findAcceleration

## Examples:
In 2 seconds, the ball goes from 3m/s to 5 m/s, determine its acceleration.

## Description:
If you know the initial and final velocity of an object over a certain amount of time, you can find the acceleration.
All you have to do is divide the change in velocity by the time.

## Syntax:
float findAcceleration(float vi, float vf, float t) {
  float acceleration = (vf-vi)/t;
  return acceleration;
}

##Parameters: 
vi is the initial velocity which, in the example, is 3.
vf is the final velocity which, in the example, is 5.
t is the amount of time which, in the example, is 2.

##Returns:
This function returns a number that represents the acceleration of the object.

##Other notes:
You can add this value to the velocity that is there to give the object acceleration.
