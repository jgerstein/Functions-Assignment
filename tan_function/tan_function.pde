float a = 0; 
float b = 0; 


void setup () {
  size(800, 600); //canvas size
  smooth();
}

void draw () {
  background(255) ; 
  fill(208, 234, 242); 


  float x = map(tan(a), -PI/2, PI/2, 0, width);
  float y = map(tan(b), -10, 100, 0, height); 
  stroke(255); 
  line(380, 0, x, height);
  stroke(208, 234, 242); 
  ellipse(x, y, 30, 30);
  a += 0.0011;
  b += 0.02;
  println(y);
}