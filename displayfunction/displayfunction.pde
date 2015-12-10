color c = color(0, 50, 204); //declare color variable

void setup() {
  size(800, 600); //set size of canvas and background
  background(255);
}

void draw() {
  fill(0); //add some text at the top of the screen
  textAlign(CENTER);
  textSize(30);
  text("sketchpad 2.0", width/2,35);
  
  stroke(0);
  fill(255); //draw various circles with different colors aka a color pallette
  ellipse(50, 100, 100, 100);
  
  fill(0); //make the white color the "eraser"
  textAlign(CENTER);
  textSize(20);
  text("ERASER", 50,110);
  
  fill(204,0,0);
  ellipse(50,200,100,100);
  fill(255,102,0);
  ellipse(50,300,100,100);
  fill(255,255,0);
  ellipse(50,400,100,100);
  fill(0,150,0);
  ellipse(50,500,100,100);
  
  if (mousePressed) { //if the mouse if pressed over a "color pallette" color, the ellipse at (mouseX, mouseY) will become that color
    setColorTo();
  }
  fill(c);
  noStroke();
  if (mouseX > 125) { //for aesthetic purposes, no ellipses will be drawn close to the color pallette
    ellipse(mouseX, mouseY, 20, 20);
  }
}

void setColorTo() { //define setColorTo function
  if (mouseX <= 150) {
    c=get(mouseX, mouseY); //the mouse will pick up the color at that location
  }
}