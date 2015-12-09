void setup() {
  size(800,600);
}

void draw() {
background(0);
println(pointslope(3,4,7));

}

float pointslope(float m,float x,float b) {
 float result= (m*x)+b;
 return result;
}