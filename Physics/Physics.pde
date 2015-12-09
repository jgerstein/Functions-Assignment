

void setup(){
  
  
}

void draw(){
 
  println(kinematics(18,5,30,9.8));  //write the number that comes from kinematics function in a single line
}

float kinematics (float xo, float vo, float t, float a){  //float the kinematics function, set variables
  float x = (xo+vo*t+(1/2)*a*sq(t));  //kinematic equation
  return x;  //return value for x
  
}