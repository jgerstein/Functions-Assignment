//declare variables


void setup () {
  size(800, 600); //canvas size
}

void draw () {
  background(255); //draw bg

  line(0, 600, mouseX, mouseY); //draw line
  float a = atan(sqrt(sq(mouseY) + sq(mouseX)));
  println(a);
}