PImage art;
float A;
float V;
float a;

void setup(){
  size(600,600);
  art = loadImage("art.jpg");
}

void draw(){
  background(art);
  textSize(40);
  textAlign(CENTER, CENTER);
  
  A = areaOfCircle();
  text("Area of circle =" + A,300,100);
  
  V = volumeOfSphere();
  text("Volume of sphere =" + V,300, 200);
  
  a = kinematicAcceleration();
  text("Acceleration =" + a,300, 300);
  }
  
  float areaOfCircle(){
    float r= 6;
    float A= PI*sq(r);
    return A;
  }
  
  float volumeOfSphere(){
    float r= 6;
    float V= 4/3*PI*r*r*r;
    return V;
  }
  
  float kinematicAcceleration(){
    float v0 = 0;
    float vf = 5;
    float t = 10;
    float a = (vf - v0)/t;
    return a;
  }