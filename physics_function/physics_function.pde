

void setup() {
 
}



void draw() {
  println(findAccelceration(0, 500, 60));
 
}
float findAccelceration ( float vi, float vf, float time){
  float accelceration = (vf-vi)/time;
  return accelceration;
}