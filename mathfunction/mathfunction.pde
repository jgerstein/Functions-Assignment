void setup(){
  size(600,600); //set size of canvas
}

void draw(){
  background(0);
  textAlign(CENTER); //align the text to the center
  textSize(50); //display text "hypotenuse
  text("hypotenuse:", width/2,200);
  textSize(100);
  text(pTheorem(3,4),width/2,350); //display the result of the pythagorean theorem
}

float pTheorem(float a, float b){ //define function pTheorem(parameters: length of legs a and b of the triangle)
 return sqrt (sq(a) + sq(b)); //answer: the sqaure root of a^2 + b^2
 
}