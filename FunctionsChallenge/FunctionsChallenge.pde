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
void donut(float x, float y, float diam){
  fill(random(255),random(255),random(255));
  ellipse(x,y, diam, diam);
  fill(0);
  ellipse(x,y, diam/3,diam/3);
}

void setup(){
  background(0);
  size(800,600);
  noStroke();
}

void draw() {
  println(force(10, 5));
  println(slope(14, 15, 12, 16));
  donut(width/2,height/2,200);
}