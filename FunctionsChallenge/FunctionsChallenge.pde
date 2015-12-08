//code for the FunctionsChallenge

void setup(){ //set size for the canvas
  size(800,600);
   
}

void draw(){
 background(0,50,50); //background color
  println(FindYCoordinate(2,-8,1)); //find y-coordinate in slope-intercept form
  println(FindPower(5,5)); // find power in physics power eqaution
  DrawaLine(mouseX,mouseY,random(width), random(height)); //drawaline function and parameters
}
float FindYCoordinate( float m, float x, float b){ //function for ycoordinate
  float y= m*x + b; //(y-coordinate= slope*x-coordinate + y-intercept
  return y; //return value
}
float FindPower(float f, float v){ //function for power
  float p= f*v; //power=force*velocity
  return p; //return value
}
void DrawaLine(float x, float y, float xx, float yy){ //function for the line
  strokeWeight(4); //line stroke weight
  stroke(255,255,0); //stroke color
  line(x,y,xx,yy); //parameters for the line
}