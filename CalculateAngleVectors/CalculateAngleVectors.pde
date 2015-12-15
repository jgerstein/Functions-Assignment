void setup(){
  background(0);
  size(800,800);
}

void draw(){
  angleBetweenVectorsRect(5,5,-5,-5);  //functions defined below...
  //angleBetweenVectorsPol(sqrt(50), sqrt(50), 45, 225);
}

float angleBetweenVectorsRect(float ax, float ay, float bx, float by){  //this function finds the angle if components are given
  textAlign(CENTER);
  textSize(20);
  text("The angle between a vector A with components " + ax + " and " + ay + "\n and a vector B with components " + bx + " and " + by + " is:", width/2, 200);
  textSize(80);
  text(round(degrees(acos(AxBx_AyBy(ax, ay, bx, by)/AB(ax, ay, bx, by)))), width/2, height/2);  //uses dot product to find angle : https://en.wikipedia.org/wiki/Dot_product  A.B = AxBx + AyBy = |A||B|cos angle
  return acos(AxBx_AyBy(ax, ay, bx, by)/AB(ax, ay, bx, by));
}

float AxBx_AyBy(float ax, float ay, float bx, float by){  //part of the formula in line 16
  return ax*bx+ay*by;  //just a simple calculation that makes line 16 more legible
}

float AB(float ax, float ay, float bx, float by){  //also part of the formula in line 16
  return sqrt(pow(ax, 2) + pow(ay,2))*sqrt(pow(bx,2) + pow(by, 2));  //using Pythagorean theorem to find the magnitude of the vectors and multiplying them together
}

/******************************************************************** 
//I just realized that the rest of this code is useless, because you can just do 225 - 45 = 180 and bypass all of these calculations.  It still works, so if you want, get rid of the comment


float angleBetweenVectorsPol(float A, float B, float angleA, float angleB){  //this function finds the angle if the magnitude and ANGLE are given
  float ax = XcomponentA(A, angleA);  //finds components using trigonometry and functions below
  float ay = YcomponentA(A, angleA);
  float bx = XcomponentB(B, angleB);
  float by = YcomponentB(B, angleB);
  textSize(20);
  text("The angle between a vector A of magnitude " + A + " at an angle of " + angleA + "\n and a vector B of magnitude " + B + " at an angle of " + angleB + " is:", width/2, 500);
  textSize(80);
  text(round(degrees(acos(AxBx_AyBy(ax, ay, bx, by)/AB(ax, ay, bx, by)))), width/2, 700);
  return acos(AxBx_AyBy(ax, ay, bx, by)/AB(ax, ay, bx, by));
}

float XcomponentA(float A, float angleA){
  float ax = A * cos(radians(angleA));
  return ax;
}

float YcomponentA(float A, float angleA){
  float ay = A * sin(radians(angleA));
  return ay;
}

float XcomponentB(float B, float angleB){
  float bx = B * cos(radians(angleB));
  return bx;
}

float YcomponentB(float B, float angleB){
  float by = B * sin(radians(angleB));
  return by;
}

*********************************************************************/