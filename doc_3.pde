PVector loc = new PVector (width/2, height/2), vel= PVector.random2D();

void setup() {
  size(800, 600);
}

void draw() {
  floatingballoons(.5, .05);
}

void floatingballoons(float vel, float scaleFactor) {
  PImage balloon;

  balloon = loadImage("balloon.jpg");
  image(balloon, 0, 0, balloon.width*scaleFactor, balloon.height*scaleFactor);
  loc.add(vel);
}