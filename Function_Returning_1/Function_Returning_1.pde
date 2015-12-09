void setup(){
  size(600,800);
  background(255);
}

void draw(){
 println(QFormula(2,14,3)); 
 println(work(0.23,4.5));
 rainbow();
}

float QFormula(float a, float b, float c){
  return (-b + sqrt( b*b - 4*a*c)) / (2*a);
}
float work(float m, float v){
  return 0.5*m*pow(v,2);
}

void rainbow(float r, float g, float b, float ){
  
}