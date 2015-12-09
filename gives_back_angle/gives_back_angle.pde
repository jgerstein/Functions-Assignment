//declare variables


void setup () {
  size(800, 600); //canvas size
}

void draw() {
  background(255); //draw bg
  println(angle(100,500));
}



float angle (float x, float y) {
  line(0, 600, x, y); //draw line
  float a = atan(sqrt(sq(mouseY) + sq(mouseX)));
  return a; //angle in radians
}
