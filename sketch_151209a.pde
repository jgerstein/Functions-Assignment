float hyp;
float angle = 0;
float x = 0;
void setup(){
  size(600,600);
  background(0);
}
void draw(){
  sinwave();
  unitVector(pyth(mouseX,mouseY));
}

//graphic function
void sinwave(){
  fill(255);
  angle += radians(1);
  float y = sin(angle)*300 + height/2;
  x+=8;
  y+=randomNumber();
  if(sizeLimit()){
    x=0;
  }
  ellipse(x, y, major(mouseX,mouseY),minor(mouseX,mouseY));
}
float major(float a, float b){
  return a%4+b%3;
}
float minor(float a, float b){
  return (a+b)/15;
}
float randomNumber(){
  return random(0,20);
}

boolean sizeLimit(){
  return x>width;
}

//math based function
float pyth(float x, float y){
  hyp = sqrt(sq(x)+sq(y));
  return hyp;
}
//physics based function
float[] unitVector(float hyp){
  float [] thing= new float [2];
  thing[0] = mouseX/hyp;
  thing[1] = mouseY/hyp;
  return thing;
}