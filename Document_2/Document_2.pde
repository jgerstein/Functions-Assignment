void setup() {
  size(800, 600);
}
void draw() {
  println(trianglearea(5, 20));
}

float trianglearea (float b, float h) {
 float result= 0.5*b*h;
 return result;
}