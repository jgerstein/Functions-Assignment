void setup() {
  size(1000, 800); //size of canvas
}

void draw() {
  background(0); //set background
  println(FtoCel(60)); //print value from fahrenheit to celcius
  println(CeltoK(15.568)); //print value from celcius to kelvin
  println(KinematicEq(15,9.8,10)); //print value of final velocity
  circles(500,400,80); //draw ellipse in canvas
}

float FtoCel(float f) {
  return .556*(f-32); //functions converts fahrenheit to celcius
}
float CeltoK(float cel) {
  return cel+273.15; //function to converts celcius to kelvin
}
float KinematicEq(float v0,float acc, float x ) {
  return sqrt(sq(v0)+(2*acc*x)); //function calulates for final velocity using kinematic equation
}
void circles(float cx,float cy, float d) {
  ellipse(cx, cy, d, d); //function draws circles 

}
void mousePressed() { //change fill of circle
  fill(random(255), random(255), random(255));
  stroke(random(255), random(255), random(255));
  strokeWeight(10);
}