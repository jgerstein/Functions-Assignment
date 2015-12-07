
float b = 100;
float h =50;

void setup() {
  size(800, 600);
}

void draw() {

  println(Area(b, h));
}

float Area(float b, float h) {
  float Area;
  Area= b* h;
  return(Area);
}