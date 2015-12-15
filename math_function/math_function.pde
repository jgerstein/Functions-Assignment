int x1=0;
int x2=300;
int y1=7;
int y2=-200;
void setup() { 
  size(800,600);
}


void draw() {
  scale(1,-1);
  translate(width/2,-height/2);
  println(findSlopeOfLine(x1,y1,x2,y2));
    line(x1,y1,x2,y2);
}

float findSlopeOfLine(float y2,float y1, float x2,float x1){
  float slope = (y2 - y1)/(x2-x1);
  return slope;
}