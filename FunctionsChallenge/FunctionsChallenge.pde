//declare and initialize variables
float vf, a;
int count=25;
//declare arrays
float []x= new float[count];
float []y= new float[count];
float []d= new float[count];
float []vx= new float[count];
float []vy= new float[count];
float []r= new float[count];
float []g= new float[count];
float []b= new float[count];

void setup() {
  //draw canvas
  size(500, 500);
  //initialize arrays
  for (int i=0; i<count; i++) {
    x[i] = random(width);
    y[i] = random(height);
    d[i] = random(80);
    vx[i] = random(-5, 5);
    vy[i] = random(-5, 5);
    r[i] = random(255);
    g[i] = random(255);
    b[i] = random(255);
  }
}

void draw() {
  //draw a background
  background(255);
  for (int i=0; i<count; i++) {
    //draw ball
    noStroke();
    fill(r[i],g[i],b[i]);
    ellipse(x[i], y[i], d[i], d[i]);
    //add velocity
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
  //initialize variables
  vf=findPermutation(random(0, 1), random(0, 1));
  a=findAcceleration(0, vf, 10);
  //add acceleration to objects
  addAcceleration();
}