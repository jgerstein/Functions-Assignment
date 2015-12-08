float x, y, velx, vely, px, py, p;


void setup() {
  size(800, 600); // canvas size
  //initialize variables
  x = 0;
  y = 0;
  velx = 5; 
  vely = 8;
}

void draw() {
  background(193, 220, 230); //draw bg
  ellipse(x, y, 20, 20); //draw ellipse
  x += velx; // gives ball x velocity
  y += vely; //gives ball y velocity
  if (x >= width) {
    velx = -velx; //ball reverses direction
  } else if (x <= 0) {
    velx = -velx; //ball reverses direction
  }
  if (y >= height) {
    vely = -vely;
  }
  if (y <= 0) {
    vely = -vely;
  }
  
}