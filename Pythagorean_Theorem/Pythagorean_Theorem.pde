void setup() {
  size(600, 600);    //setup for size and background color
  background(0);
}

void draw() {
  PythagoreanTheorem(25, 16, 0);    //function is put into void draw
}

void PythagoreanTheorem(float a, float b, float c) {    //name of function is PythagoreanTheorem and requires 3 variables to solve the equation (a,b,c)
  c = sqrt(a*a + b*b);  //this is the equation that will solve for c
  textSize(50);        //textSize and text displays the answer
  text(c, 200, 300);
}