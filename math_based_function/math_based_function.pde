
void draw(){
  println(quadratic(1,6,9));  
}

float []quadratic(float a, float b, float c){    //declare function and variables
  float [] x = new float [2];
  x[0]=(-b + sqrt(sq(b)- 4*a*c))/(2*a);      
  x[1]=(-b - sqrt(sq(b)- 4*a*c))/(2*a);
  return x;
}


  