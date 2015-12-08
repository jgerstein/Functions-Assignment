void setup() {
  size(800, 600);
}


void draw() {
  background(0);
  craftA2DimensionalSphere(20);
}


void craftA2DimensionalSphere(float diam) {
  noCursor();
  fill(0,255,0);
  ellipse(mouseX,mouseY,diam,diam);
}


void diameter(float d, float r){
  d = r * 2;
  text(d,mouseX + 20,mouseY - 20);
}