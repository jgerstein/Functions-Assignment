int xPos=400;
int yPos=300; //necessary floats for all functions to work for postion of the ball so it knows where to translate the ball
int zPos=500;

int xSpeed=1;
int ySpeed=1;    //necessary floats for functions to work for speed in the 3 directions
int zSpeed=1;

int xDirection=17;
int yDirection=10;    // the speed floats could work on their own but i added another set of floats so i can add more direction of movements  
int zDirection=15;
int radius=100; //unnecessary floats but its easier to change the size of the ball and depth of the box without having to change all the numbers in the code
int depth=1000;

// end of variables

void setup() {
  size (800,600, P3D);  //makes drawing in 3D
  
}

void draw() {
  background(0);
  backgroundsquare();    //use created functions 
  drawball();
  makeballmove();
}



void backgroundsquare() {

  stroke(255);

 // these lines draw the back of the so called box that the ball is in
  line(0, 0, -depth, width, 0, -depth);
  line(0, 0, -depth, 0, height, -depth);               //depth variable is used so i dont have to change each number if i wanna make the "box go back further
  line(0, height, -depth, width, height, -depth);
  line(width, height, -depth, width, 0, -depth); 

  // perspective lines that are the sides of the box the ball is in

  line(0, 0, -depth, 0, 0, 0);
  line(width, 0, -depth, width, 0, 0);
  line(0, height, -depth, 0, height, 0);
  line(width, height, -depth, width, height, 0);  
}



void drawball() {
  //makes ball move follwing the x,y,and z postion of the sphere
  translate (xPos, yPos, -zPos);
  //draws sphere
  sphere(radius);        
  //adds no fill to make ball look more 3D, just a personal preference 
  noFill();
}


void makeballmove() {
  xPos = xPos + (xSpeed * xDirection); //gives the sphere its x velocity
  yPos = yPos + (ySpeed * yDirection);  //gives the sphere its y velocity
  zPos = zPos + (zSpeed * zDirection);   // gives the sphere its z velocity

  if (xPos>width-radius) {    //makes ball bounce back if hits the right side of screen
    xDirection*=-1;
  }

  if (yPos>height-radius) {    //makes ball bounce back if it hits bottom of screen
    yDirection*=-1;
  }

  if (zPos>depth) {          //makes ball bounce back if it hits "back" of screen
    zDirection*=-1;
  }

  if (xPos<radius) {        //makes ball bounce back if it hits the left side of screen
    xDirection*=-1;
  }

  if (yPos<radius) {      //makes ball bounce back if it hits top of screen
    yDirection*=-1;
  }

  if (zPos<0) {          //makes ball bounce back if it hits "front" of screen
    zDirection*=-1;
  }
}