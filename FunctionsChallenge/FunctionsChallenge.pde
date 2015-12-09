float x, x2, x3, d;//diameter of circle
PImage jets;
void setup() {
  size(1000, 800); //size of canvas
  d = 100; //value of diameter
}

void draw() {
  background(0); //set background
  jets(); //show jets image
  println(FtoCel(60)); //print value from fahrenheit to celcius
  println(CeltoK(15.568)); //print value from celcius to kelvin
  println(SecondLaw(200,9.8)); //print value of force using newtons second law
  circles(); //draw ellipse in canvas
}

float FtoCel(float f) {
  return .556*(f-32); //formula to convert to celcius
}
float CeltoK(float cel) {
  return cel+273.15; //formula to convert to kelvin
}
float SecondLaw(float mass,float acc) {
  return mass*acc; //formula for newtons second law
}
void circles() {
  ellipse(x, 200, d, d); //draw first ellipse
  ellipse(x2, 400, d, d); //draw second ellipse
  ellipse(x3, 600, d, d); //draw third ellipse
}
void jets() {
  jets = loadImage("6819282-jets-wallpaper.jpg");
  image(jets, 0, 0);
}
void mousePressed() { //change fill of ellipse
  fill(random(255), random(255), random(255));
  x=(random(100, 900));
  x2=(random(100, 900));
  x3=(random(100, 900));
  filter(BLUR,2);
}