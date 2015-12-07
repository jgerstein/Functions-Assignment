//name variables
PImage art;
float A;
float a;

//set canvas and load images
void setup(){
  size(600,600);
  art = loadImage("art.jpg");
}

void draw(){
  //set background and text preference
  background(art);
  textSize(40);
  textAlign(CENTER, CENTER);
  
  //calculate area of a circle
  A = areaOfCircle();
  text("Area of circle =" + A,300,100);

  //calculate acceleration
  a = kinematicAcceleration();
  text("Acceleration =" + a,300, 300);
  }
  
  //enter values to be calculated
  float areaOfCircle(){
    float r= 6;
    float A= PI*sq(r);
    return A;
  }
  
  
  float kinematicAcceleration(){
    float v0 = 0;
    float vf = 5;
    float t = 10;
    float a = (vf - v0)/t;
    return a;
  }