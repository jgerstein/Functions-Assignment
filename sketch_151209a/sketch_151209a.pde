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
//makes a sin wave continuously across the screen
void sinwave(){
  fill(255);
  angle += radians(1);
  float y = sin(angle)*300 + height/2;
  x+=8;
  y+=randomNumber();
  
  //once sin wave reaches end, restarts at a different place
  if(sizeLimit()){
    x=0;
  }
  //turns wave into circles
  ellipse(x, y, major(mouseX,mouseY),minor(mouseX,mouseY));
}
//varies major axis of ellipse
float major(float a, float b){
  return a%4+b%3;
}
//varied minor axis of ellipse
float minor(float a, float b){
  return (a+b)/15;
}
//where the y posiion of your ellipse goes
float randomNumber(){
  return random(0,20);
}
//tells once sin wave goes to end of screen
boolean sizeLimit(){
  return x>width;
}

//math based function
//gives the hypotenuse length from (0,0) to parameters(where mouse is)
float pyth(float x, float y){
  
  hyp = sqrt(sq(x)+sq(y));
  return hyp;
}
//physics based function
//finds the unit vector of where your mouse is.
float[] unitVector(float hyp){
  float [] thing= new float [2];
  thing[0] = mouseX/hyp;
  thing[1] = mouseY/hyp;
  return thing;
}