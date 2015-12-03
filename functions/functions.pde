void setup() {
  size(100,100);
}

void draw() {
  float physicsResult = solveFinalVelocity(2,5,3); //declare variable and set it equal to result of function given parameters
  println(physicsResult); //print out result
  float[] quadraticResult = quadraticEquation(1, -5, -6);
  println(quadraticResult[0] + " ||  " + quadraticResult[1]); //print out solutions
  
  doSomethingVisual(); //call the function and display stuff
}

//physics function
float solveFinalVelocity(float a, float v0, float t) {
  float result = v0 + a*t; //the result is set to the equation with the numbers as variables
  return result;
}

//math function
float[] quadraticEquation(float a, float b, float c) {
  float result1 = (-b+sqrt(sq(b)-4*a*c))/(2*a); //the result is set to the equation with the numbers as variables
  float result2 = (-b-sqrt(sq(b)-4*a*c))/(2*a); //the result is set to the equation with the numbers as variables, this time minu the sqrt
  float[] result = {result1, result2}; //set an array with two values
  return result; //return the array
}

void doSomethingVisual() {
  
}