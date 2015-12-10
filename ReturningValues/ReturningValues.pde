void setup(){
  size(700,700); //size 700,700 and background black
  background(1); 
}
void draw(){
  bluePattern(50,50); //draw blue patern starting at locatio 50,50
  String vf="The Velocity Final is....";  //create string vf which equals ...
  String finalSide="The final side's value is...";  //create string finalSide which equals ...
  println(vf);  //print "The velocity final is..."
  println(velocityFinal(3,4,5)); //print the returned value from the function using value 3,4, and 5
  println(finalSide); //print "The final side's value..."
  println(hypotenuseOfRightTriangle(3,4));  //print returned value from the function using the value 3 and 4
}

float hypotenuseOfRightTriangle(float a, float b){  //function to find hypotenuse using value of two different sides
  float answer;
  answer=sqrt(sq(a)+sq(b));
  return(answer);
}

float velocityFinal(float vo, float a, float t){   //function to find velocity final using initial velocity, acceleration, and time
  float vf;
  vf=vo+(a*t);
  return(vf);
}

void bluePattern(float x, float y){
  fill(0,0,255);  //set fill to blue
  ellipse(x,y,50,50);  //draw ellipse at x,y and size 50x50
  rect(x,y,200,200);  //draw ellipse at x,y and size 200x200
  ellipse(x+200,y+200,50,50);  //draw ellipse at bottom right of first square 
  rect(x+200,y+200,200,200);  //draw rectangle with top left corner at the center of 2nd ellipse
  ellipse(x+400,y+400,50,50); //draw ellipse at bottom right of the second square
  rect(x+400,y+400,200,200);  //draw rectangle with top left corner at the center of 3rd ellipse
}
  