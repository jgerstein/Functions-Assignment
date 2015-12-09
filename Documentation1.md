# Name: Annie Zhou

## Examples:
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
## Description:
This graphic function creates a sin wave of ellipses of sizes that vary based on where your mouse is.

## Syntax:
void name(){}
void name(int parameters){}
void name(float parameters){}
void name(boolean parameters){}
##Parameters: 
You can have as many parameters as you like. Parameters have a primitive before them
##Returns:
no data returned

##Other notes:
Anything else?
