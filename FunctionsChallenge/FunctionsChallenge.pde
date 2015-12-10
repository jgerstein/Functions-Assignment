void setup() {
  size(1000, 800); //size of canvas
}

void draw() {
  background(0); //set background
  println(FtoCel(60)); //print value from fahrenheit to celcius
  println(CeltoK(15.568)); //print value from celcius to kelvin
  println(SecondLaw(200,9.8)); //print value of force using newtons second law
  circles(500,400,80); //draw ellipse in canvas
}

float FtoCel(float f) {
  return .556*(f-32); //functions converts fahrenheit to celcius
}
float CeltoK(float cel) {
  return cel+273.15; //function to converts celcius to kelvin
}
float SecondLaw(float mass,float acc) {
  return mass*acc; //function calulates for using newtons second law
}
void circles(float cx,float cy, float d) {
  ellipse(cx, cy, d, d); //function draws circles 

}
void mousePressed() { //change fill of circle
  fill(random(255), random(255), random(255));
}
