void setup () {
  size(600, 600);  //draw canvas for mouseX and mouseY inputs
}

void draw () {
  background(255);  //draw a white background
  println(convertmeterstomiles(10));  //print out resulting miles from meters
  println(convertinchestokm(10));   //print out resulting kilometers from inches
}


float convertmeterstomiles (float x) {  //convert meters to miles
  float result = x * 1000 * .625;
  return result;
}

float convertinchestokm (float y) {  //convert inches to kilometers
  float result = y *  .0833 * .0001 * .625;
  return result;
}
