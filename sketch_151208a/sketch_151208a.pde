//finding the area of a circle 

void setup() {
  size(500, 500); 
  background(255);
}

void draw() {
  println(circlearea(10));
  println(findmomentum(100, 2.5)); 
  blackcircles(100,200,100);    //use he blackcirclesquare function to draw black circle and square
}


//finding the area(MATH)
float circlearea(float radius) {
  float  area = pow(radius, 2)*3.14;
  return area;
}



//finding momentum (PHYSICS)
float findmomentum(float mass, float velocity) {
  float momentum = mass*velocity;
  return momentum;
}
//drawing void 
void blackcircles(float r, float g, float b) {    //name the function

 fill(r,g,b);
 ellipse(random(0,width),random(0,height),20,20);

  }