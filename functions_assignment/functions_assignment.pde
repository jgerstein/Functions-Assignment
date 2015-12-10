void setup() {
  size(515,500);
}

void draw() {

  println(quadratic(3, 5, 2));
  println(centripetal(4, 1, 2));
  darudpe();
}

float[]quadratic(float a, float b, float c) {
  float [] ans =new float [2];
  ans[0]= -b-sqrt(sq(b)-(4*a*c));
  ans[0]=ans[0]/(2*a);


  ans[1]= -b+sqrt(sq(b)-(4*a*c));
  ans[1]=ans[1]/(2*a);
  return ans;
}


float centripetal(float m, float v, float r) {
  float ans;
  ans=m*sq(v)/r;
  return ans;
}

void darudpe() {

  PImage pepe;
  pepe = loadImage("rare.jpg"); 
  image(pepe, 0, 0);

  noStroke();

  triangle(random(800), random(600), random(800), random(600), random(800), random(600));
  
  ellipse(mouseX,mouseY, random(50,300),random(50,300));
  fill(random(255),random(255),random(255));
}