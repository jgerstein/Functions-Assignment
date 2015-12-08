//finding the area of a circle 

void setup() {
  size(500, 500); 
  background(255);
}

void draw() {
  println(circlearea(10));
  println(findmomentum(100, 2.5)); 
  blackcircles();    //use he blackcirclesquare function to draw black circle and square
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
void blackcircles() {    //name the function
  int x;   //state the x postion of the circles
  int y;   //y postion of the circles
  int d;   //diamter
  int s; //space between
  boolean draw;   //do draw or not to draw circles

  x = 1;   //sets the intial x
  y = 1;  //sets the intial y
  d = 3; //establishs the diameter value
  s = 3;  //estbalishes the space in between each 
  draw = true;  //sets the variable draw to true

fill(255);
  if (draw) { //if draw is true draw circles with the s value in between the x values 
    ellipse(x, y, d, d);
    x = x+s;
  }
  if (x > width) { //once the circles get to the end of the canvas the y postion increase by the s and reset postion
    y = y + s;
    x = 1;
  }
  if ( y >height) { //if the y value gets past the height the circles stop drawing
    draw =false;
  }
}