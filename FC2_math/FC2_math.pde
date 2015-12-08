//code for math based equation in the FunctionsChallenge

void setup(){ 
}

void draw(){
  println(MathEquation(2,-8,1));
  
}
float MathEquation( float m, float x, float b){
  float y= m*x + b;
  return y;
}