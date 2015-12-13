//declare variables
float x;
float y;
float diam;
float v;

void setup(){
  //set canvas size and background
  size(800,600);
  background(0);
  
  //initialize variables
  x = width/2;
  y = height/2;
  diam = 50;
  v = random(-7,7);
}

void draw(){
  background(0);
  //color ellipse
  stroke(20,50,20);
  fill(20,50,20);
  //call mouseGravity function
  gravity(.1);
  
  //draw ellipse
  ellipse(x,y,diam,diam);
  
  //draw crosshairs by calling "crosshair" function
  crosshair(50,mouseX,mouseY,15,5,25,150,200);
  
  //have ellipse bounce off of the canvas' floor
  if(y + diam/2 > height){
    y = height - diam/2;
    v = -v;
  }
  
  //set a given number to forty two, print it in the console, and answer the ultimate question by calling the "fortyTwo" function
  fortyTwo(9001);
}

//create gravity to create gravity with a given strength
void gravity(float g){
  //add gravity to velocity
  v += g;
  //add velocity to the ball's y-position
  y += v;
}

//create crosshair function to draw crosshairs at a given location
void crosshair(float d, float xi, float yi, float l, float w, float r, float g, float b){
  //color crosshairs
  stroke(r,g,b);
  fill(r,g,b);
  
  //draw center of crosshairs
  ellipse(xi,yi,d/4,d/4);
  
  //draw rectangles around crosshairs
  rectMode(CENTER);
  rect(xi, yi + l + w, w, l);
  rect(xi, yi - l - w, w, l);
  rect(xi + l + w, yi, l, w);
  rect(xi - l - w, yi, l, w);
}

//create fortyTwo function to set a given number to forty two in a circuitious way
void fortyTwo(float num){
  println("What do you get when you multiply six by nine?");
  
  //use an overly circuitous route to set the function to print 42
  num /= num;
  num = num * 60;
  num = num * 7;
  num = num / 10;
  println(num);
  
  println("'I always thought there was something fundamentaly wrong with the universe...'");
}