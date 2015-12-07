

void setup(){
  
  
}


void draw(){
println (lawofcos(5,10,30));  
  
}


float lawofcos(float a, float b, float angle){
  float c = sqrt(sq(a) + sq(b) - 2*a*b*cos(angle));
  return c;
}