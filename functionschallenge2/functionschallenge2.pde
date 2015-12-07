//Initialize variables
float m1, v1i, v1f, x1, v1, m2, v2i, v2f, x2, v2, y, diam;

void setup() {
  size(800, 600);
  background(0);
  
  //Input values
  m1 = 5; //Mass of object 1
  v1i = 3; //Initial velocity of object 1
  m2 = 2; //Mass of object 2
  v2i = -1; //Initial velocity of object 2
  
  //Initial values
  x1 = width/4;
  x2 = 3*width/4;
  y = height/2;
  v1 = v1i;
  v2 = v2i;
  diam = 20;
  
  v1f = elastic1(m1, v1i, m2, v2i);
  v2f = elastic2(m1, v1i, m2, v2i);
  
  //Display output values (final velocities) at bottom
  println(elastic1(m1, v1i, m2, v2i));
  println(elastic2(m1, v1i, m2, v2i));
}

void draw() {
  background(0);
  ellipse(x1, y, diam, diam);
  x1 += v1;
  
  ellipse(x2, y, diam, diam);
  x2 += v2;
  
  if(dist(x1, y, x2, y) < diam) {
    v1 = v1f;
    v2 = v2f;
  }
}

//Define elastic collision functions (2 values)

//Final velocity of object 1
float elastic1(float m1, float v1i, float m2, float v2i) {
  float v1f = (v1i*(m1-m2) + v2i*2*m2)/(m1+m2);
  return v1f;
}

//Final velocity of object 2
float elastic2(float m1, float v1i, float m2, float v2i) {
  float v2f = (v2i*(m1-m2) + v1i*2*m2)/(m1+m2);
  return v2f;
}