void setup(){
  size(800,800);
}

void draw(){
 println(QFormula(2,14,3)); 
}

float QFormula(float a, float b, float c){
  return (-b + sqrt( b*b - 4*a*c)) / (2*a);
}