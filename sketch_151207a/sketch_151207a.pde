void setup() {

}

void draw() {
println(SolveForX(15, 7, 12));
  
}

float SolveForX(float vf, float vo, float t){
  float x = (1/2)*(vf + vo)*t;
  return x;
}