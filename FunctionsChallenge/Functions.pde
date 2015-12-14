float findPermutation(float data, float places) {   
  float denominator = data-places;       //change the value of places to use it in the denominator
  //set i equal to the denominator value minus one so that every time it goes through the for loop it multiplies by 1 less which simulates the factorial function
  for (float i=denominator-1; i>=1; i--) {    
    denominator*=i;
  }
   //use the factorial method again for the numerator
  for (float i=data-1; i>=1; i--) {
    data=data*i;
  }
  float result= data/denominator;  //divide the two factorials found
  return result;    //return the result
}

float findAcceleration(float vi, float vf, float t) {
  float acceleration = (vf-vi)/t;
  return acceleration;
}
void addAcceleration() {
  for (int i=0; i<count; i++) {
    if (a<=1) {
      vy[i]+=a;
    } else {
      vy[i]=1;
    }
  }
}
