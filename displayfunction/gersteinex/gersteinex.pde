color c = color(255, 50, 10);

void setup() {
  size(800, 600);
}

void draw() {
  fill(255, 255, 255);
  ellipse(50, 50, 50, 50);
  if (mousePressed) {
    setColorTo();
  }
  fill(c);
  if (mouseX > 100) {
    ellipse(mouseX, mouseY, 20, 20);
  }
}

void setColorTo() {
  if (mouseX < 100) {
    c = get(mouseX, mouseY);
  }
}