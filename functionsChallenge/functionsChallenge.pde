void setup() {//runs once
  size(600, 600);
}

void draw() {//runs in a loop
  println(square(25)); //the program will find the square root of a number
  merryChristmas();//the function will run in a loop
  println(quadratic(1, 5, 6));//the answers will be printed 
}

float square(int num) {//initialize the function 
  float result=sqrt(num);  //to find the square root of the number 
  return result;//returns the result, the square root
}
float[] quadratic(float a, float b, float c) {//function is float, because it will return a value
  float[] answers = new float[2];//the quadratic formula looks for two answers  
  answers[0]=(-b + sqrt( b*b - 4*a*c)) / (2*a);//the first array will look for the first x
  answers[1]=(-b - sqrt( b*b - 4*a*c)) / (2*a);//will calculate the second x
  return answers;//will then give both x's
}

void merryChristmas() {//the function, merryChristmas, is initialized
  background(0);
  fill(255, 0, 0);//the color of the first line of text
  textSize(50);
  text("Merry Christmas!", mouseX, mouseY);//what the first line of text will say 
  if (mouseX>width/2-100) {//when the x position of the mouse is greater than 1/2 the width, then the second line will disappear
    return;//will return to the original first line of text depending where the mouse is positioned
  }
  fill(0, 255, 0);
  text("Feliz Navidad!", mouseX, mouseY+100);//the second line of text, which disappears according to the position of the mouse
}