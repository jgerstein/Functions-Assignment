float value = PI/4; //set value of trig function to calculate in radians


void setup(){
  textAlign(CENTER, BOTTOM);
  size(800,600);

}

void draw(){
  //set background to black
  background(0);

  //store result of trig function
  float[] result = trig(value);
  
  //Display trig functions
  text("Sine: " + result[0], width/2, 50);
  text("Cosine: " + result[1], width/2, 100);
  text("Tangent: " + result[2], width/2, 150);
  text("Arc Sine: " + result[3], width/2, 200);
  text("Arc Cosine: " + result[4], width/2, 250);
  text("Arc Tangent: " + result[5], width/2, 300);  
  
}

float[] trig(float a){
  float[] result = new float[6];
  result[0] = sin(a);
  result[1] = cos(a);
  result[2] = tan(a);
  result[3] = acos(a);
  result[4] = asin(a);
  result[5] = atan(a);
  return result;
}