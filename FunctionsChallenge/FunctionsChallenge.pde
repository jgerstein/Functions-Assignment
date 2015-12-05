float velX = 5;
float velY = 5;
float x = 2;
float y = 0;
float grav = .3;
float diam = 50; 


void setup(){
  size(800, 600);
  textAlign(CENTER);
  textSize(16);
}

void draw(){
  background(0);
  
  velY = velY + grav;
  
  x = x + velX;
  y = y + velY;
  
  ellipse(x, y, diam, diam);
  
  //solveQuadratic() test
  text(solveQuadratic(9, 0, -2, true), width/2, 400);
  text(solveQuadratic(9, 0, -2, false), width/2, 450);

  //projectile(width/2, 0, 5, 5, .3, 30);
}

float solveQuadratic(float a, float b, float c, boolean plus){
  float x;
  float fourAC;
  //negative b plus-minus the square root of b-squared minus 4ac over 2a
  
  fourAC = 4*a*c;
  
  if(plus){
    x = (-b + sqrt(sq(b) - fourAC)) / (2*a);  //the addition of the plus-minus sign
  } else {
    x = (-b - sqrt(sq(b) - fourAC)) / (2*a);  //the subtraction of the plus-minus sign
  }
  
  if (fourAC > sq(b)){
    text("See those squares? No solution.", width/2, 500);
  }
  
  return x;
  
}

void projectile(float locX, float locY, float velX, float velY, float grav, float diam){
  
  velY += grav;
  
  locX += velX;
  locY += velY;
  
  ellipse(locX, locY, diam, diam);
  
}