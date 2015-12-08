//code for math based equation in the FunctionsChallenge

void setup(){ 
}

void draw(){
  println(FindYCoordinate(2,-8,1));
  println(FindPower(5,5));
}
float FindYCoordinate( float m, float x, float b){
  float y= m*x + b;
  return y;
}
float FindPower(float f, float v){
  float p= f*v;
  return p;
}
  