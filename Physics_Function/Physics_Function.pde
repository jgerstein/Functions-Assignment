void setup () {
}

void draw() {
  //print calculated final velocity
  println(finalVelocity(1,9.8,2));
}

//formula for final velocity final velocity = initial velocity + (acceleration * time)
float finalVelocity(float v1, float a, float t){
  float i = v1 + (a*t);
  return i;
}