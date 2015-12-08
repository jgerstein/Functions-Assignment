//code for math based equation in the FunctionsChallenge

void setup(){ 
  size(800,600);
   
}

void draw(){
 background(0,50,50);
  println(FindYCoordinate(2,-8,1));
  println(FindPower(5,5));
  DrawaLine(mouseX,mouseY,random(width), random(height));
}
float FindYCoordinate( float m, float x, float b){
  float y= m*x + b;
  return y;
}
float FindPower(float f, float v){
  float p= f*v;
  return p;
}
void DrawaLine(float x, float y, float xx, float yy){
  strokeWeight(4);
  stroke(255,255,0);
  line(x,y,xx,yy);
}