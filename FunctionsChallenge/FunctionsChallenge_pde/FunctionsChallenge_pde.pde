//Declare variables
float x, y, varx, vary, timer; 
boolean trigger = false; //sets when a certain  


void setup () {
  background(0);
  size(800, 600);
}

void draw () {
  if (trigger == false) {
    String answer = drawATriangle();
    textSize(20);
    fill(random(255), random(255), random(255));
    text(answer, 50, 35);
  }
  timer+=1;
  if (timer >= 100) {
    timer = 0;
    trigger = false;
    background(0);
  }
}

String drawATriangle() {
  float x = 50;
  float y = 50;
  float varx = random(550);
  float vary = random(400);
  fill(random(255), random(255), random(255));
  triangle(x, y, x, y+vary, x+varx, y+vary);
  trigger = true;
  return calculateHyp(varx, vary);
}

String calculateHyp(float varx, float vary) {
  float hyp = sqrt(sq(varx) + sq(vary));
  String s = "The length of the hypotenuse is " + hyp;
  return s;
}