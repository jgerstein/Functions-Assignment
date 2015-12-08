float diam;

void setup() {

  size(800, 600);
  background(100);
}

void draw() {
  if (mouseX>width/2) {
    diam=random(0, 30);
  }
  if (mouseX<width/2) {
    diam=random(10, 20);
  }
  if (mousePressed) {

    drawrandomCircles();
  }
}

void drawrandomCircles() {
  noStroke();
  fill(random(0, 255), random(0,0), random(0,255)); 
  ellipse(random(0, 800), random(0, 600), diam, diam);
}