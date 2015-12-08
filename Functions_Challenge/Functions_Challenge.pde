void setup() {
  size(800, 600);
}

void draw() {
  println(volumeofcylinder(5,10));
}


float volumeofcylinder(float r, float h) {
  float result = (pow(r,2))*PI*h; 
  return result;
}