

void setup(){
  size(800,600);   //set size
  
}


void draw(){
background(0);
 drawarect(mouseX,mouseY,100,150,random(255),random(255),random(255),15);   //draw rectangle using drawarect function
  
  
}

void drawarect(float x,float y, float sz1, float sz2, float f1, float f2, float f3, float speed){   //set variables for function
 
   rect(x,y,sz1,sz2); //draw rectangle
  fill(f1,f2,f3);   //set fill
  frameRate(speed);  //set frame rate
 
  
}