void setup() {
  size(800, 600); // canvas size
  //initialize variables
}

void draw() {
  background(193, 220, 230); //draw bg
  println(m(23, 5, 8, 3, 74));
}

float m (float mass, float velx0, float velxf, float vely0, float velyf) {
  float px = mass*velxf - mass*velx0; //x momentum
  float py = mass*velyf - mass*vely0; //y momentum
  float p = sqrt(sq(px) + sq(py)); //total momentum
  return p; //returns momentum (kg*m/s)
}
