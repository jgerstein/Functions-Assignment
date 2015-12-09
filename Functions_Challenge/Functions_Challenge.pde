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
  
  cy = cy+vo1; //add a velocity to location
  vo1 = vo1+a1; //add acceleration to velocity

  println(pyth(x, y)); 
  println(kinematic1(vo, a, t));
  textSize(30);
  fill(255);
  text(x, 10, 45);
  text(y, 130, 45);
  text(pyth(x, y), 30, 90);
  text(kinematic1(vo, a, t), (width/2)- 40, height-40);
}