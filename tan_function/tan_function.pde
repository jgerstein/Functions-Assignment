


void setup () {
  size(800, 600); //canvas size
}

void draw () {
  background(255) ;  //draw bg
  
}

void drawtriangle(int a, int h, int c, int d, int e, int f, float r, float g, float b) { //create function for traingle

  triangle(a, h, c, d, e, f); //draws traingle at assinged locations
  fill(r, g, b);
}