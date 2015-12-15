void setup() {
  size(800, 600); //draw a canvas
}

void draw() {
  println(finalvelocity(5, 9, 30)); //print the final velocity in m/s
}

float finalvelocity( float vo, float accel, float t) { //find the final velocity
  float result= vo+(accel*t);
  return result;
}