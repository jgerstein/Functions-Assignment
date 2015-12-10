int x, y; //declare variables
float vo, a, t; 
float vo1, a1, t1;
float cx, cy;
void setup() {
  size(800, 600); //set a size
  x = 4; //initialize variables
  y = 3;
  vo = 0;
  a = 2;
  t = 600;
  vo1 = 0;
  a1 = 2;
  t1 = 0;
  cx = width/2;
  cy = 0;
}
void draw() {
  background(0); //set a background each frame
  ellipse(cx, cy, 15, 15); //draw the ellipse at location
  
  randomCircles(); //draw random circles
  
  cy = cy+vo1; //add a velocity to location
  vo1 = vo1+a1; //add acceleration to velocity

  println(pyth(x, y)); //make sure it works 
  println(kinematic1(vo, a, t)); //make sure it works
  textSize(30); //set text size
  fill(255); //set text fill
  text(x, 10, 45); //draw value for x
  text(y, 130, 45); //draw value for y
  text(pyth(x, y), 30, 90); //draw value for what pyth returns when x and y are inputed
  text(kinematic1(vo, a, t), (width/2)- 40, height-40); //return value for vf when vo, a, and t are inputed
}