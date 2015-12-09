void setup() {
size(500,500);  //set canvas size
}

void draw() {
  println(SolveForX(15, 7, 12));  //write solution for SolveForX
  println(AreaOfTheCylinder(1, 1));  //write solution for AreaOfTheCylinder
  DrawARainbowCircle(width/2,height/2,100);  //draw a rainbow circle
}

float SolveForX(float vf, float vo, float t) {  //float SolveForX and vf, vo, and t
  float x = (1.0/2)*(vf + vo)*t;  //float equation to solve for x
  return x;  //return the solution for x
}
float AreaOfTheCylinder(float r, float h){  //float AreaOfTheCylinder and r and h
  float A = (2.0)*(PI)*(r)*(h) + (2.0)*(PI)*(sq(r));  //float equation to solve for A
  return A;  //return the solution for A
}
void DrawARainbowCircle (float x, float y, float diam){  //create the DrawARainbowCircle function and float x, y, and diam
  ellipse(x, y, diam, diam);  //draw an ellipse
  colorMode(HSB, 360, 100, 100, 100);  //set the color to cycle through the rainbow
  fill(frameCount%360, 100, 100);  //set the fill to change by a set frame count
}