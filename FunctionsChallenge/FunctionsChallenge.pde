float radius;

void setup() {
  size(1400, 800);
  smooth();
  textAlign(CENTER);
  ellipseMode(CENTER);
}

void draw() {
  radius = distance();
  background(0);
  println(electricForce());
  stroke(255);
  noFill();
  ellipse(width/2, height/2, 100, 100);
  text(electricForce(), width/2, height/2);
  forceStress();
}

float distance() {
  float inputX = abs(mouseX - width/2) * 2;
  float inputY = abs(mouseY - height/2) * 2;
  float result = sqrt(sq(inputX) + sq(inputY));
  return result;
}

float electricForce() {
  float k = 9 * pow(10, 9);
  float q1 = 1;
  float q2 = 1;
  float r = radius;
  float result = k * abs(q1) * abs(q2) / sq(r);
  return result;
}

void forceStress() {
}