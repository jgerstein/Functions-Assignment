//creates a fake fraction string very close to or exactly given float value
String frac(float x) {
  for (int i = 1; i<1000000; i++) {
    if (abs(i*x-round(i*x))<0.000001) {
      String s = str(round(i*x));
      String t = str(i);
      String a = s+ "/" +t;
      return a;
    }
  }
  //if we take denominator to a million and can't find something close enough
  return "no approximation with desired precision";
}

//gravitational force between two objects given positions and masses
float grav(float m1, PVector r1, float m2, PVector r2) {
  float d = r1.dist(r2);
  return 0.0000000000667408*m1*m2/d;
}



void setup() {
  size(150,150);
}

void draw() {
  background(0);
  text(frac(8.8490396),width/2,height/2);
}