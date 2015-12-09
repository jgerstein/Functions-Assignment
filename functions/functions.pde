//finding the area of a circle 

void setup() {
  size(500, 500);   //size
  background(255);   //set background color
}

void draw() {
  println(circlearea(10));   //print result
  println(findmomentum(100, 2.5));  //print result 
  coloredcircles(20,100,200,100);    //use he blackcirclesquare function to draw black circle and square
}


//finding the area(MATH)
float circlearea(float radius) {   //creat the function
  float  area = pow(radius, 2)*3.14;   //set up the equation
  return area;    //reaturn the value
}



//finding momentum (PHYSICS)
float findmomentum(float mass, float velocity) {   //set up function
  float momentum = mass*velocity;   //set up the equation
  return momentum;    //return the value 
}
//drawing void 
void coloredcircles(float diam, float r, float g, float b) {    //name the function

 fill(r,g,b);  //fill the circle with given parameters
 ellipse(random(0,width),random(0,height),diam,diam);  //draw ellipse with the give parameters

  }