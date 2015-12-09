float angle;
PImage shineBright;
float a=0;

float x;
void setup() {
  size(800, 800);
  frameRate(200);
  background(255);
  shineBright = loadImage("STAR.png");
}

void draw() {
  filter(BLUR);
  fill(0);
  angle += radians(1);    //comet's size and location
  float y = sin(angle)*200 + height/2;
  x++;
  a++;
  if (x>height) {    //Resets location of comet
    x=0;
  }
  fill(255, 102, 255);
  ellipse(x, y, size(), size());    //The comet

  if (mousePressed) {
    star();    //Adds stars to code, to beautify
  }
  if(keyPressed && keyCode==SHIFT){
    println(numberNonsense(6));
  }
}

float size() {
  return(x%angle);    //Allows comet to flay around in a sin wave.
}

void star() {    //Adds stars!!
  image( shineBright, random(width), random(height), size(), size());
}

float numberNonsense(int boi){    //square root yo.
  float answer= sqrt(boi);
  return answer;
}