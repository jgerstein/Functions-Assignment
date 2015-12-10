float findPermutation(float data, float places) {
  places=data-places;
  for (float i=places-1; i>=1; i--) {
    places=places*i;
  }
  for (float i=data-1; i>=1; i--) {
    data=data*i;
  }
  float result= data/places;
  return result;
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