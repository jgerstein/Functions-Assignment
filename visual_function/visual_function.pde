float diam;

void setup() {

  size(800, 600);
  background(80);
}

void draw() {
  if (mouseX>width/2) {
    diam=random(0, 30);
  }
  if (mouseX<width/2) {
    diam=random(10, 200);
  }
  if (mousePressed) {

    drawrandomCircles();
  }
  println( diam);
}


float drawrandomCircles() {
  noStroke();
  fill(random(0, 255), random(0,0), random(0,255)); 
  ellipse(random(0, 800), random(0, 600), diam, diam);
  return(diam);
}