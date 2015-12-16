float findPermutation(float data, float places) {   
  //change the value of places to use it in the denominator
  float denominator = data-places;       
  //set i equal to the denominator value minus one so that every time it goes through the for loop it multiplies by 1 less which simulates the factorial function
  for (float i=denominator-1; i>=1; i--) {    
    denominator*=i;
  }
  //use the factorial method again for the numerator
  for (float i=data-1; i>=1; i--) {
    data=data*i;
  }
  //divide the two factorials found
  float result= data/denominator;
  //return the result
  return result;    
}

float findAcceleration(float vi, float vf, float t) {
  //use the acceleration equation to find acceleration
  float acceleration = (vf-vi)/t;
  //return the value
  return acceleration;
}
void addAcceleration() {
  //add acceleration to the object
  for (int i=0; i<count; i++) {
    //if the acceleration is less than 1...
    if (a<=1) {
      //...add acceleration
      vy[i]+=a;
    } else { //if not...
      //...reset the velocity to 1
      vy[i]=1;
    }
  }
}