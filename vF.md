# Name: vF()

## Examples:
void draw() {
  println(vF(0));
}

float vF(float vI) {
  float t;
  t= random(0, 2400);
  return vI + 9.8*t;
}

## Description:
Calculates the final velocity of an object with a gravitational acceleration of 9.8 and a random time between zero and 2400 seconds, given the initial velocity.

## Syntax:
vF(vI)

##Parameters: 
vI            float: initial velocity

##Returns:
float

