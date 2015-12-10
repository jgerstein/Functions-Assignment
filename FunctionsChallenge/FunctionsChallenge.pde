float vf, a;
int count=10;
//declare arrays
float []x= new float[count];
float []y= new float[count];
float []d= new float[count];
float []vx= new float[count];
float []vy= new float[count];

void setup() {
  size(500, 500);
  for (int i=0; i<count; i++) {
    x[i] = random(width);
    y[i] = random(height);
    d[i] = random(80);
    vx[i] = random(-5, 5);
    vy[i] = random(-5, 5);
  }
}

void draw() {
  background(255);
  for (int i=0; i<count; i++) {
    //draw ball
    fill(0);
    ellipse(x[i], y[i], d[i], d[i]);
    x[i] += vx[i];
    y[i] += vy[i];
    //bounce ball if it hits walls
    if (x[i] + d[i]/2 >= width) {
      vx[i] = -abs(vx[i]);    //if the ball hits the right wall, assign x velocity the negative version of itself
    } else if (x[i] - d[i]/2 <= 0) {
      vx[i] = abs(vx[i]);     //if the ball hits the left wall, assign x velocity the positive version of itself
    }
    if (y[i] + d[i]/2 >= height) {
      vy[i] = -abs(vy[i]);
      y[i] = height - d[i]/2;
    } else if (y[i] - d[i]/2 <= 0) {
      vy[i] = abs(vy[i]);
    }
  }
  vf=findPermutation(random(0, 1), random(0, 1));
  a=findAcceleration(0, vf, 10);
  addAcceleration();
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
void addAcceleration() {
  for (int i=0; i<count; i++) {
    if (a<=1) {
      vy[i]+=a;
    } else {
      vy[i]=1;
    }
  }
}