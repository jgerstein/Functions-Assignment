float m;         //declare variables for mass and acceleration, acceleration equals 9.81 m/s^2 on Earth
float a = 9.81;
void setup() {
  background(0);    //setup size and background
  size(600, 600);
}

void draw() {
  Mass(0);        //insert function and weight in parentheses (in kilograms)
}




void Mass(float w) {    //function is called Mass
  m = w/a;         // equation for mass is weight divided by acceleration
  textSize(50);              //setup for text size and location
  text(m + " kg", 150, 300);
}