PImage lakers; //image

void setup() {
  size(800, 600); //canvas size
}

void draw() {
  lakers(); //draw the lakers function
}

void lakers() {
  lakers=loadImage("lakers.jpg"); //load image
  image(lakers, 0, 0); //image position
  if (keyPressed) { //when key is pressed
    tint(random(255), random(255), random(255)); //random tint when key is pressed
  }
}