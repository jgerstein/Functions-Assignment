float x;        // delcares variables for location and velocity
float y;
float vx;
float vy;
void setup() {
  background(0);    //setup for background color and size
  size(800, 600);
  x=0;         //gives the variables a value
  y=200;
  vx=10;
  vy=10;
}

void draw() {
  Pretzel(50,50);    //the function is put here. variables can be used to change size of the ellipse
}


void Pretzel(float a,float b) {
  noStroke();        //setup for ellipse
  ellipse(x,y,a,b);
  x=x+vx;      //setup for velocity
  y=y+vy;
  if (y>=height) {                                      //the changes in velocity make the ellipse travel in the shape of a pretzel
    vy=-vy;
    fill(random(255), random(255), random(255));
  }
    if (x>=width) {
    vx=-vx;
    fill(random(255), random(255), random(255));
  }
  if (y<=0) {
    vy=-vy;
    fill(random(255), random(255), random(255));
  }
  if (x<=0) {
    vx=-vx;
    fill(random(255), random(255), random(255));
  }

 
}