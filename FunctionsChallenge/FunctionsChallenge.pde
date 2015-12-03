void setup(){
  size(800, 600);
  textAlign(CENTER);
  textSize(16);
}

void draw(){
  background(0);
  
  //solveQuadratic() test
  text(solveQuadratic(1, 2, -8, true), width/2, 400);
  text(solveQuadratic(1, 2, -8, false), width/2, 450);

}

float solveQuadratic(float a, float b, float c, boolean plus){
  float x;
  
  //negative b plus-minus the square root of b-squared minus 4ac over 2a
  
  if(plus){
    x = (-b + sqrt(sq(b) - 4*a*c)) / (2*a);  //the addition of the plus-minus sign
  } else {
    x = (-b - sqrt(sq(b) - 4*a*c)) / (2*a);  //the subtraction of the plus-minus sign
  }
  return x;
  
}