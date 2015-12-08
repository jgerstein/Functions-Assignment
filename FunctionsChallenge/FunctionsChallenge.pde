float vf, a;
float x=width/2, y=height/2, d=50, vx=1, vy=1;
void setup() {
  size(500,500);
}

void draw() {
  background(255);
  vf=findPermutation(random(0, 1), random(0, 1));
  a = findAcceleration(0, vf, .5);
  fill(0);
  ellipse(x, y, d, d);
  x*=vx;
  y*=vy;
  vx*=a;
}

  float findPermutation(float data, float places) {
  places=data-places;
  for (float i=places-1; i>=1; i--) {
    places=places*i;
  }
  for (float i=data-1; i>=1; i--) {
    data=data*i;
  }
  float result= data/places;
  return result;
}

float findAcceleration(float vi, float vf, float t) {
  float acceleration = (vf-vi)/t;
  return acceleration;
}

void changeAcceleration() {
}