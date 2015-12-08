void setup() {
}

void draw() {
  println(findPermutation(8, 3));
}

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