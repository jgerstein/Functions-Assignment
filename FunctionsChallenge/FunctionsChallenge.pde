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
  return 0.0000000000667408*m1*m2/(d*d);
}

//recurses a sierpinsky triangle. k is # of times to recurse
void sier(int k, float x, float y) {
  if (k == 0) {
    triangle(x,y,x+5,y+8.66,x+10,y);
  }
  else {
    sier(k-1,x,y);
    sier(k-1,x+(10*pow(2,k-1)),y);
    sier(k-1,x+(5*pow(2,k-1)),y+(8.66*pow(2,k-1)));
  }
}

void setup() {
  size(800,600);
}

void draw() {
  background(0);
  text(frac(8.8490396),0,height);
  fill(255);
  sier(6,0,0);
}