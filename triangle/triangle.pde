


void setup () {
  size(800, 600); //canvas size
}

void draw () {
  background(255) ;  //draw bg
  drawtriangle(234, 23, 123, 573, 742, 46, 234, 56, 56); //draws triangle w/ assigned vaues for stuff
}

void drawtriangle(float a, float h, float c, float d, float e, float f, float r, float g, float b) { //create function for traingle

  triangle(a, h, c, d, e, f); //draws traingle at assinged locations
  fill(r, g, b); //color of triangle
}