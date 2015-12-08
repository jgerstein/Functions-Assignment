void setup() {
  size(800, 600);
}

void draw() {
  println(finalvelocity(5, 9, 30));
}

float finalvelocity( float vo, float accel, float t) {
  float result= vo+(accel*t);
  return result;
}