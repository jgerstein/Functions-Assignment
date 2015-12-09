void setup() {
}

void draw() {
  //print calculated interest
  println(interestFormula(2,.01,3)); 
}

 //interest formula interest = principal * rate * time
float interestFormula (float p, float r,float t) { 
 float i = p*r*t;
 return i;
}