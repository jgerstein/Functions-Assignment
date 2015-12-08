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
  ellipse(x,y,a,b);
 
}