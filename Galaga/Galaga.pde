float circleX = 30;  //declare and initialize variables
float start = -11;

void setup() {
  frameRate(30);  //this eases later calculations
  size(400, 400);
  background(0);
}

void draw() {
  background(0);
  noStroke();
  displayShip();  //functions defined below
  bubble();
  if (mousePressed) {  //if mouse pressed, ...
    fireProjectile();  //create the projectile
    moveProjectile();  //and move it (as long as the mouse is held
    if(mouseX >= 10 && mouseX <= 50){  //if projectile is firing within range of the circle, .. 
      println("HIT");  //print HIT to the console
    }
  }
  if(keyPressed){  //if a key is pressed, ...
    start = -11;  //projectile is reloaded
  }
}

void displayShip() {  //defines the shape of the ship (as a series of 8-bit squares)
  rectMode(CENTER);  //define rectangles according to the center; makes later calculations easier
  fill(255);  //let's start with white squares
  rectangle(0, 0);  //origin
  rectangle(0, -1);
  rectangle(0, -2); 
  rectangle(0, -3); 
  rectangle(-1, -2);
  rectangle(1, -2);
  rectangle(-2, -2);
  rectangle(2, -2);
  rectangle(-2, -3);
  rectangle(2, -3);
  rectangle(-2, -4);
  rectangle(2, -4);
  rectangle(-3, -2);
  rectangle(3, -2);
  rectangle(-3, -3);
  rectangle(3, -3);
  rectangle(4, -2);
  rectangle(-4, -2);
  rectangle(4, -1);
  rectangle(-4, -1);
  rectangle(5, 0);
  rectangle(-5, 0);
  rectangle(5, -1);
  rectangle(-5, -1);
  rectangle(5, -2);
  rectangle(-5, -2);
  rectangle(5, -3);
  rectangle(-5, -3);
  rectangle(-3, -5);
  rectangle(3, -5);
  rectangle(-3, -6);
  rectangle(3, -6);
  rectangle(0, -6); 
  rectangle(1, -6);
  rectangle(-1, -6);
  rectangle(1, -5);
  rectangle(-1, -5);
  rectangle(0, -7); 
  rectangle(1, -7);
  rectangle(-1, -7);
  rectangle(0, -8);
  rectangle(0, -9);
  rectangle(0, -10);
  fill(255, 0, 0);  //red squares
  rectangle(1, -1);
  rectangle(-1, -1);
  rectangle(2, -1);
  rectangle(-2, -1);
  rectangle(1, -3);
  rectangle(-1, -3);
  rectangle(0, -4);
  rectangle(1, -4);
  rectangle(-1, -4);
  rectangle(0, -5);
  rectangle(5, -4);
  rectangle(-5, -4);
  rectangle(3, -7);
  rectangle(-3, -7);
  fill(0, 0, 255);  //blue squares
  rectangle(2, -5);
  rectangle(-2, -5);
  rectangle(3, -4);
  rectangle(-3, -4);
}

void rectangle(float x, float y) {  //defining the function rectangle() in relation to mouse's x-position and a constant height value
  rect(mouseX + 3*x, (height-10) + 3*y, 3, 3);  //squares are 3x3 pixels
}

void bubble() {  //defining the target to be hit
  stroke(100, 255, 50);  //some type of green
  strokeWeight(2);  //outline of 2px
  fill(100,255,50, 50);  //fill with some transparency
  ellipse(30, 120, 20, 20);  //create the circle
}

void fireProjectile(){  //defining launching the projectile, which is basically a white 1x2 rectangle
  noStroke();
  fill(255);
  rectangle(0, start);
  rectangle(0, start-1);
}

void moveProjectile(){  //defining moving the projectile every frame
  if(frameCount%1 == 0){
    start = start - 1;  //moves projectile up
    fireProjectile();  //redisplay projectile
  }
}