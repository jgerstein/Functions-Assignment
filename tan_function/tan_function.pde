float a = 0; 
float b = 0; 


void setup () {
  size(800, 600); //canvas size
  smooth(); //makes function smooth
  noStroke(); // no stroke for ellipse
}

void draw () {
  background(255) ;  //draw bg
  fill(208, 234, 242); //gives ellipse color
  float x = map(tan(a), -PI/2, PI/2, 0, width); //maps tan function
  float y = map(tan(b), -10, 100, 0, height); //maps tan function
  ellipse(x, y, 30, 30); //draw ellipse, radius of 30
  a += 0.003; //add to a 
  b += 0.02; //add to b
  a += 0.01; //add to a again to speed up ball
}