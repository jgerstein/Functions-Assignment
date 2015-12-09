float d;//diameter of circle
PImage jets;
void setup() {
  size(1000, 600); //size of canvas
  d = 100; //value of diameter
}

void draw() {
  background(0); //set background
  jets();
  println(FtoCel(60)); //print value from fahrenheit to celcius
  println(CeltoK(15.568)); //print value from celcius to kelvin
  println(SecondLaw(200));
    circle(); //draw ellipse in canvas
}

float FtoCel(float f) {
  return .556*(f-32); //formula to convert to celcius
}
float CeltoK(float cel) {
  return cel+273.15; //formula to convert to kelvin
}
float SecondLaw(float mass){
  return mass*9.8;
}
void circle() { //draw ellipse
  ellipse(width/2, height/2, d, d);
}
void jets() {
  jets = loadImage("6819282-jets-wallpaper.jpg");
  image(jets, 0, 0);
}
void mousePressed() { //change fill of ellipse
  fill(random(255), random(255), random(255));
}