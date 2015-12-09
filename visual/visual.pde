float x1=150;
float x2=650;
float d= 100;
void setup() {
  size(800, 600);
}

void draw() {
  background(250);
  baymaxFace(random(150),random(150),random(150));
}

void baymaxFace(float r, float g, float b) {
  fill(r,g,b);
  noStroke();
  ellipse(x1, height/2, d,d);
  ellipse(x2, height/2, d, d);
  rect(x1,height/2, x1+400, 10);
}