void setup () {
  size(800,800);
  noStroke();
}
void draw () {
  println(QuadForm1(1, 2, 1));
  println(QuadForm2(1, 2, 1));
  println(FindVelocity(2, 3, 4));
  polkadots();
}
float QuadForm1(float a, float b,float c) {
  float answer1;
  answer1 = ((-b)+(sqrt((b*b)-(4*a*c))))/(2*a);
  return answer1;
}
float QuadForm2(float a, float b,float c) {
  float answer2;
  answer2 = ((-b)-(sqrt((b*b)-(4*a*c))))/(2*a);
  return answer2;
}
float FindVelocity(float v0,float a,float t) {
  float v;
  v = v0 + (a*t);
  return v;
}
void polkadots() {
  ellipse(random(height),random(width),5,5);
  fill(random(255),random(255),random(255));
}