//declare and define units
int ux = 25;
int uy = 25;

void setup() {
  //set size
  size(500, 500);
}

void draw() {
  //set background
  background(0);
  
  //draws green grid spaced out by units
  strokeWeight(1);
  stroke(0, 255, 0, 64);
  for (int i = width/2-ux; i > 0; i -= ux) {
    line(i, 0, i, height);
  }
  for (int i = width/2+ux; i < width; i += ux) {
    line(i, 0, i, height);
  }
  for (int i = height/2-uy; i > 0; i -= uy) {
    line(0, i, width, i);
  }
  for (int i = height/2+uy; i < height; i += uy) {
    line(0, i, width, i);
  }
  stroke(0, 255, 0, 64);
  strokeWeight(3);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);

  /**********temporary deactivation of linear functions
  //linear functions
  strokeWeight(2);
  for (float i = width/2; i > 0; i-=0.1) {
    //draws functions as sums of all pieces of the graph
    stroke(255);
    line(i, height/2-uy*f1((i-width/2)/ux), i-1, height/2-uy*f1((i-1-width/2)/ux));
    line(i, height/2-uy*f2((i-width/2)/ux), i-1, height/2-uy*f2((i-1-width/2)/ux));
    line(i, height/2-uy*f3((i-width/2)/ux), i-1, height/2-uy*f3((i-1-width/2)/ux));
    line(i, height/2-uy*f4((i-width/2)/ux), i-1, height/2-uy*f4((i-1-width/2)/ux));
    
    //draws area as sums of all distances from the x axis to the graph
    stroke(255, 0, 0, 10);
    line(i, height/2, i, height/2-uy*f1((i-width/2)/ux));
    stroke(255, 255, 0, 10);
    line(i, height/2, i, height/2-uy*f2((i-width/2)/ux));
    stroke(0, 0, 255, 10);
    line(i, height/2, i, height/2-uy*f3((i-width/2)/ux));
    stroke(0, 255, 0, 10);
    line(i, height/2, i, height/2-uy*f4((i-width/2)/ux));
  }
  for (float i = width/2; i < width; i+=0.1) {
    //draws functions as sums of all pieces of the graph
    stroke(255);
    line(i, height/2-uy*f1((i-width/2)/ux), i+1, height/2-uy*f1((i+1-width/2)/ux));
    line(i, height/2-uy*f2((i-width/2)/ux), i+1, height/2-uy*f2((i+1-width/2)/ux));
    line(i, height/2-uy*f3((i-width/2)/ux), i+1, height/2-uy*f3((i+1-width/2)/ux));
    line(i, height/2-uy*f4((i-width/2)/ux), i+1, height/2-uy*f4((i+1-width/2)/ux));

    //draws area as sums of all distances from the x axis to the graph
    stroke(255, 0, 0, 10);
    line(i, height/2, i, height/2-uy*f1((i-width/2)/ux));
    stroke(255, 255, 0, 10);
    line(i, height/2, i, height/2-uy*f2((i-width/2)/ux));
    stroke(0, 0, 255, 10);
    line(i, height/2, i, height/2-uy*f3((i-width/2)/ux));
    stroke(0, 255, 0, 10);
    line(i, height/2, i, height/2-uy*f4((i-width/2)/ux));
  }

  //print integrals of linear functions
  println("Integral of f1(x) from 0 to width = " + Integral1(0));
  println("Integral of f2(x) from 0 to width = " + Integral2(0));
  println("Integral of f3(x) from 0 to width = " + Integral3(0));
  println("Integral of f4(x) from 0 to width = " + Integral4(0));
  **********/

  //parametric curves
  strokeWeight(1);
  for(float i = 0; i < 1000; i += 0.1) {
    stroke(255);
    line(width/2+pc1(i).x,height/2+pc1(i).y,width/2+pc1(i+0.1).x,height/2+pc1(i+0.1).y);
    line(width/2+pc2(i).x,height/2+pc2(i).y,width/2+pc2(i+0.1).x,height/2+pc2(i+0.1).y);
  }
}

//linear functions
float f1(float x) {
  return sq(x);
}

float f2(float x) {
  return sqrt(abs(x));
}

float f3(float x) {
  return -sq(x);
}

float f4(float x) {
  return -sqrt(abs(x));
}

//paremetric curves
//butterfly curve
PVector pc1(float t) {
  return new PVector(50*sin(t)*(exp(cos(t))-2*cos(4*t)-pow(sin(t/12), 5)),-50*cos(t)*(exp(cos(t))-2*cos(4*t)-pow(sin(t/12), 5)));
}

//logarithmic spiral
PVector pc2(float t) {
  return new PVector(sin(t)*exp(t/10)/25,cos(t)*exp(t/10)/25);
}

//integrals of function continuous over visible graph
float Integral1(float F) {
  for (int i = width/2-width/(2*ux); i < width/2+width/(2*ux); i++) {
    F += 0.1*f1(i-width/2);
  }
  return F;
}

float Integral2(float F) {
  for (int i = width/2-width/(2*ux); i < width/2+width/(2*ux); i++) {
    F += 0.1*f2(i-width/2);
  }
  return F;
}

float Integral3(float F) {
  for (int i = width/2-width/(2*ux); i < width/2+width/(2*ux); i++) {
    F += 0.1*f3(i-width/2);
  }
  return F;
}

float Integral4(float F) {
  for (int i = width/2-width/(2*ux); i < width/2+width/(2*ux); i++) {
    F += 0.1*f4(i-width/2);
  }
  return F;
}