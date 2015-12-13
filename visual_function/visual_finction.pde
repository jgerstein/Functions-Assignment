PImage images;    //declare image variables
int count = 600;    //max # of balls to appear
float [] x = new float[count];    //declare variables for x & y location and diameter
float [] y = new float[count];
float [] diam = new float[count];

void setup () {
  size(800,800);
  images = loadImage("images.jpg");   //bring the image into the processing file
  for (int i = 0; i < count; i++) {   //set random values for x & y location and diameter
    x[i] = random(0,800);
    y[i] = random(0,800);
    diam[i] = random(0,10);
  }
}

void draw () { 
  background(56, 255, 221);   //give a light blue background
  image(images, 250, 250);    //draw the chosen image and establish its location
  Pimage();
  DrawArrayofCircles();   //use this function to draw an array of circles
}

void DrawArrayofCircles () {
  for (int i = 0; i < count; i++) {
    fill(random(255),random(255),random(255));    //give each new ball a random fill
    ellipse(x[i], y[i], diam[i], diam[i]);    //draw circles randomly
  }
}

void Pimage () {
  image(images, 250, 250);    //draw the chosen image and establish its location
  if (keyPressed) {   //if any key is pressed, give a random tint
  tint(random(255),random(255),random(255));
  }
}  
