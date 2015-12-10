void setup() {
  size(800, 600);
}


void draw() {
  background(0);
  //All functions in use
  craftA2DimensionalSphere(20);
  areaOfATriangle(15,25,0);
  weight(0,20,9.81);
}

//Visual
void craftA2DimensionalSphere(float diam) {
  noCursor();
  fill(0,255,0);
  ellipse(mouseX,mouseY,diam,diam);
}

//Math
void areaOfATriangle(float b, float h, float A){
  fill(255,0,0);
  A = .5 * b * h;
  textSize(50);
  text(A + "m",450,300);
  textSize(25);
  text("2",640,275);
}

//Physics
void weight(float W, float m, float g){
  fill(0,0,255);
  W = m * g;
  textSize(50);
  text(W + "N", 50,300);
}