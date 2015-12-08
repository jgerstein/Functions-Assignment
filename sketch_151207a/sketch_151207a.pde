void setup() {
size(500,500);
}

void draw() {
  println(SolveForX(15, 7, 12));
  println(AreaOfTheCylinder(1, 1));
  DrawARainbowCircle(width/2,height/2,100);
}

float SolveForX(float vf, float vo, float t) {
  float x = (1.0/2)*(vf + vo)*t;
  return x;
}
float AreaOfTheCylinder(float r, float h){
  float A = (2.0)*(PI)*(r)*(h) + (2.0)*(PI)*(sq(r));
  return A;
}
void DrawARainbowCircle (float x, float y, float diam){
  ellipse(x, y, diam, diam);
  colorMode(HSB, 360, 100, 100, 100);
  fill(frameCount%360, 100, 100);
}