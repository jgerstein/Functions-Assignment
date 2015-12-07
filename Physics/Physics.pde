

void setup(){
  
  
}

void draw(){
 
  println(kinematics(18,5,9.8,30));
}

float kinematics (float xo, float vo, float t, float a){
  float x = (xo+vo*t+(1/2)*a*sq(t));
  return x;
  
}