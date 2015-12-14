void setup() {
  size(800,600);
}

void draw(){
  println(force(7,9.8));
  
}
float force(float m, float a) {
  float result = m*a;
  return result;
}