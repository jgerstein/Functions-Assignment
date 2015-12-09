void setup(){
  background(0);
  size(800,800);
}

void draw(){
  angleBetweenVectorsRect(5,5,-5,-5);
  angleBetweenVectorsPol(sqrt(50), sqrt(50), 45, 225);
}

float angleBetweenVectorsRect(float ax, float ay, float bx, float by){
  textAlign(CENTER);
  textSize(20);
  text("The angle between a vector A with components " + ax + " and " + ay + "\n and a vector B with components " + bx + " and " + by + " is:", width/2, 200);
  textSize(80);
  text(round(degrees(acos(AxBx_AyBy(ax, ay, bx, by)/AB(ax, ay, bx, by)))), width/2, height/2);
  return acos(AxBx_AyBy(ax, ay, bx, by)/AB(ax, ay, bx, by));
}

float AxBx_AyBy(float ax, float ay, float bx, float by){
  return ax*bx+ay*by;
}

float AB(float ax, float ay, float bx, float by){
  return sqrt(pow(ax, 2) + pow(ay,2))*sqrt(pow(bx,2) + pow(by, 2));
}

float angleBetweenVectorsPol(float A, float B, float angleA, float angleB){
  float ax = XcomponentA(A, angleA);
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