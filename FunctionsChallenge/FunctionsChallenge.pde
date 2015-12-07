float velX = 5;
float velY = 5;
float x = 2;
float y = 0;

void setup() {
  size(800, 600);
  textAlign(CENTER);
  textSize(16);
}

void draw() {
  background(0);

  //solveQuadratic() test
  text(solveQuadratic(9, 0, -2, true), width/2, 400);  
  text(solveQuadratic(9, 0, -2, false), width/2, 450);

  text(solveQuadratic(10, 3, 5, true), width/2, 500);  
  text(solveQuadratic(10, 3, 5, false), width/2, 550);

  println(solveQuadratic(1, 2, -3, true));
  
  //projectile test
  projectile(.3, 30);

  //shapes test
  shapes(60, 80, 0, 255);  //heart
  shapes(mouseX, mouseY, 1, 200);  //star
  shapes(400, 100, 2, 100);  //flower
}



float solveQuadratic(float a, float b, float c, boolean plus) {
  float x;
  float fourAC;
  //negative b plus-minus the square root of b-squared minus 4ac over 2a

  fourAC = 4*a*c;

  if (plus) {
    x = (-b + sqrt(sq(b) - fourAC)) / (2*a);  //the addition of the plus-minus sign
  } else {
    x = (-b - sqrt(sq(b) - fourAC)) / (2*a);  //the subtraction of the plus-minus sign
  }

  if (fourAC > sq(b)) {
    println("The squares mean that this has no solution.");
  }

  return x;
}

void projectile(float grav, float diam) {

  velY += grav;

  x += velX;
  y += velY;

  ellipse(x, y, diam, diam);

  if (y >= height) {
    velY *= -1;
  }

  if (x >= width) {
    velX *= -1;
  } else if(x <= 0){
    velX *= -1;
  }
}

void shapes(float x, float y, int typeOfShape, color c) {

  //draw a heart
  if (typeOfShape == 0) {
    noStroke();
    fill(c);
    ellipse(x, y, 30, 30);
    ellipse(x + 29, y, 30, 30);
    triangle(x - 15, y + 5, x + 15, y + 40, x + 44, y + 5);
  }

  //draw a star
  if (typeOfShape == 1) {
    noStroke();
    triangle(x - 15, y + 20, x, y, x + 15, y + 20);
    triangle(x - 15, y + 5, x, y + 25, x + 15, y + 5);
  }
  
  //draw a flower
  if(typeOfShape == 2){
    float sz = 40;
    noStroke();
    
    ellipse(x, y, sz, sz);
    
    ellipse(x + 30, y, sz/2, sz/2);
    ellipse(x - 30, y, sz/2, sz/2);
    
    ellipse(x, y + 30, sz/2, sz/2);
    ellipse(x, y - 30, sz/2, sz/2);

    ellipse(x + 20, y + 20, sz/2, sz/2);
    ellipse(x + 20, y - 20, sz/2, sz/2);
    ellipse(x - 20, y + 20, sz/2, sz/2);
    ellipse(x - 20, y - 20, sz/2, sz/2);
  }
}

/********************
 
 REMINDER: Third function: draw new shapes. Star, Moon, Heart, Flower, etc. Use numbers or words to assign them for the parameters.
 Other parameters: float x, float y, int typeOfShape, color c //etc.  
 
 *******************/