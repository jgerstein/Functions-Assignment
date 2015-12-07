float value = PI/2; //set value of trig function to calculate in radians


void setup(){
  textAlign(CENTER, BOTTOM);
  size(800,600);

}

void draw(){
  
  background(0);

  
}

float[] trig(float a)
{
  float[] result = new float[6];
  result[0] = sin(a);
  result[1] = cos(a);
  result[2] = tan(a);
  result[3] = acos(a);
  result[4] = asin(a);
  result[5] = atan(a);
  return result;
}