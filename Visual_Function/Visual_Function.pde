float x;
float y;
float vx;
float vy;
void setup() {
  background(0);
  size(800, 600);
  x=0;
  y=200;
  vx=10;
  vy=10;
}

void draw() {
  Pretzel(50,50);
}


void Pretzel(float a,float b) {
  noStroke();
  ellipse(x,y,a,b);
  x=x+vx;
  y=y+vy;
  if (y>=height) {
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