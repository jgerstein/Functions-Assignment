void setup() {
  size(800,600);
}

void draw() {
  //draw background to cover previous frame
  background(0);
  wanderer(width/2, height/2, random(-5, 5), random(-5, 5));
}

void wanderer (float x, float y, float velX, float velY) {

  //draw ball
  ellipse(x, y, 30, 30);

  //add velocity to position
  x += velX;
  y += velY;

  //wrap the ball's position
  if (x >= width) {
    x = 0;
  } else if (x  <= 0) {
    x = width ;
  }
  if (y >= height) {
    y = 0;
  } else if (y <= 0) {
    y = height ;
  }
}