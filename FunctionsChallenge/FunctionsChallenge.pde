void setup() {
  size(800, 600);
}


void draw() {
  background(0);
  craftA2DimensionalSphere(20);
  areaOfATriangle(15,25,0);
}


void craftA2DimensionalSphere(float diam) {
  noCursor();
  fill(0,255,0);
  ellipse(mouseX,mouseY,diam,diam);
}

void areaOfATriangle(float b, float h, float A){
  fill(255,0,0);
  A = .5 * b * h;
  textSize(50);
  text(A,400,300);
}