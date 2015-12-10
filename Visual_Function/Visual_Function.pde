PImage picture;

void setup() {
  size(800, 600);
  picture = loadImage("turtle.png");
}

void draw() {
  //draw background to cover previous frame
  background(0,0,180);
  picture(2);
}

void picture (float level) {
  image(picture, mouseX, mouseY);
  filter(BLUR, level);
}