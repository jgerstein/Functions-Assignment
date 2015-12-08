//physics
float force(float m, float a) {
  float F = m*a;
  return F;
}

//math
float slope(float r1x, float r1y, float r2x, float r2y) {
  float m = (r2y - r1y)/(r2x-r1x);
  return m;
}

//visual



void draw() {
  println(force(10, 5));
  println(slope(14, 15, 12, 16));
}