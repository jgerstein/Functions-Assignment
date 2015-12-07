//Initialize variables
float a, b, c;

void setup() {
  //Set input values
  // 0 = ax^2 + bx + c
  a = 1;
  b = 5;
  c = 4;
  
  //Display output values at bottom
  println(quadratic1(a, b, c));
  println(quadratic2(a, b, c));
}

void draw() {
}

//Define quadratic functions (2 values)
float quadratic1(float a, float b, float c) {
  float x1 = (-b + sqrt(sq(b) - (4 * a * c)))/(2*a);
  return x1;
}
float quadratic2(float a, float b, float c) {
  float x2 = (-b - sqrt(sq(b) - (4 * a * c)))/(2*a);
  return x2;
}