# Name: Displacement

## Examples:
float Displacement(float vi, float t, float a){
  float d = (vi*t)+(0.5*a*sq(t));
  return d;
}

void draw(){
 float d = Displacement(8, 2, -2);
 rect(d, height/2, 50, 50);
}

## Description:
Calculates the displacement of a particle given its intial speed, acceleration, and time interval

## Syntax:
float Displacement(float vi, float t, float a){
  float d = (vi*t)+(0.5*a*sq(t));
  return d;
}

##Parameters: 
vi = initial speed of particle
t = time interval over which particle moves
a = acceleration of particle

##Returns:
float d

##Other notes:
None
