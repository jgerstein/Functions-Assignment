float velX = 5;
float velY = 5;
float x = 2;
float y = 0;

void setup(){
  size(800, 600);
  textAlign(CENTER);
  textSize(16);
}

void draw(){
  background(0);
  
  //solveQuadratic() test
  text(solveQuadratic(9, 0, -2, true), width/2, 400);
  text(solveQuadratic(9, 0, -2, false), width/2, 450);

  //projectile(.3, 30);
  
  shapes(60, 80, 0, 255);
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

void projectile(float grav, float diam){
  
  velY += grav;
  
  x += velX;
  y += velY;
  
  ellipse(x, y, diam, diam);
  
}

void shapes(float x, float y, int typeOfShape, color c){
 
  //draw a heart
  if(typeOfShape == 0){
    noStroke();
    fill(c);
    ellipse(x, y, 30, 30);
    ellipse(x + 29, y, 30, 30);
    triangle(x - 15, y + 5, x + 15, y + 40, x + 44, y + 5);
  }
  
  //draw a moon
  if (typeOfShape == 1){
    noStroke();
    
  }
}

/********************

REMINDER: Third function: draw new shapes. Star, Moon, Heart, Flower, etc. Use numbers or words to assign them for the parameters.
Other parameters: float x, float y, int typeOfShape, color c //etc.  

*******************/