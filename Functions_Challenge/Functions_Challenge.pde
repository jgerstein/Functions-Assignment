int x, y;
float vo, a, t;
float cx, cy;
void setup() {
  size(800, 600);
  x = 4;
  y = 3;
  vo = 0;
  a = 2;
  t = 0;
  cx = width/2;
  cy = 0;
}
void draw() {
  background(0);
  ellipse(cx, cy, 15, 15);
  
  cy = cy+vo;
  vo = vo+a;
  
  
  
  println(pyth(x, y));
  println(kinematic1(vo, a, t));
  textSize(30);
  fill(255);
  text(x, 10, 45);
  text(y, 130, 45);
  text(pyth(x, y), 30, 90);
  text(kinematic1(vo, a, t), (width/2)- 40, height-40);
}