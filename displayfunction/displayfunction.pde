color c = color(0, 50, 204); //color variacle for the color red

void setup() {
  size(800, 600);
  background(255);
  //fill(c);
  //ellipse(75, 250, 100, 100);
}

void draw() {
  fill(255);
  ellipse(50, 100, 100, 100);
  fill(204,0,0);
  ellipse(50,200,100,100);
  fill(255,102,0);
  ellipse(50,300,100,100);
  fill(255,255,0);
  ellipse(50,400,100,100);
  fill(0,150,0);
  ellipse(50,500,100,100);
  
  if (mousePressed) {
    setColorTo();
  }
  fill(c);
  if (mouseX > 100) {
    ellipse(mouseX, mouseY, 20, 20);
  }
}

void setColorTo() {
  if (mouseX <= 150) {
    c=get(mouseX, mouseY);
  }
}