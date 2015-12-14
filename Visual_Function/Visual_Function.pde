//initialize
PImage picture;

void setup() {
  //canvas size and load image
  size(800, 600);
  picture = loadImage("turtle.png");
}

void draw() {
  //background and picture function
  background(0,0,180);
  picture(2);
}

//blurred turtle picture moves with mouse on blue background
void picture (float level) {
  image(picture, mouseX, mouseY);
  filter(BLUR, level);
}