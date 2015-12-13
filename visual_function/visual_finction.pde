PImage images;    //declare image variables

void setup () {
  size(800,800);
  images = loadImage("images.jpg");
}

void draw () { 
  image(images, 250, 250);
  if (keyPressed) {
  tint(random(255),random(255),random(255));
  }
}

