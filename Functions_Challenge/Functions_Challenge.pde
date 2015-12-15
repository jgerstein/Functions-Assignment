void setup() {
  size(800, 600); //draw a canvas
}

void draw() {
  println(volumeofcylinder(5,10)); //give the result of the volume
}


float volumeofcylinder(float r, float h) { //find volume of cylinder
  float result = (pow(r,2))*PI*h; 
  return result;
}