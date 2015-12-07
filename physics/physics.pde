float d=21;
float t=12;

void setup() {
  size(800,600);
}

void draw() {
  println(V(d,t));
}

float V (float d,float t){
  float V;
  V=d/t;
  return(V);
}