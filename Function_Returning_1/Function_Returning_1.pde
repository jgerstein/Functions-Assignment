void setup(){
  size(600,800);
  background(255);
}

void draw(){
 println(QFormula(2,14,3)); 
 println(work(0.23,4.5));
 success(125,45,231,234);
}

float QFormula(float a, float b, float c){
  return (-b + sqrt( b*b - 4*a*c)) / (2*a);
}
float work(float m, float v){
  return 0.5*m*pow(v,2);
}

void success(float r, float g, float b, float d){
  stroke(r,g,b);
  line(d, 0, random(0, width), height);
    
    if (d < width) {
        d++;
    } else {
        d = 0; 
    }
}