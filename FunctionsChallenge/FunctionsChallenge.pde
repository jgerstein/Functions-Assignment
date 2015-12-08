void setup() {
}

void draw() {
  findPermutation(3,8);
}

int fact(int n) {
  for (int i=n-1; i>=1; i--) {
    n=n*i;
  }
  int factorial =
  return 
}

int findPermutation(int places, int data) {
  int result= factorial(places)/factorial(places-data);
  return result;
}