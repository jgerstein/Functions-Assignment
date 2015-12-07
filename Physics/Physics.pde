float vo = 5;
float a = 2;
float d = 2;
float vf;

void setup(){
  background(0);
  size(800,600);
}

void draw(){
 vf = kinematic(vo, a, d);
 println(vf);
}

float kinematic(float vo, float a, float d){
  float vf = sqrt(sq(vo) + 2*a*d);
  return vf;
}