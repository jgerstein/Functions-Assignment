

void setup(){
  size(800,600);
  
}


void draw(){
background(0);
 drawarect(mouseX,mouseY,100,150,random(255),random(255),random(255),30);
  
  
}

void drawarect(float x,float y, float sz1, float sz2, float f1, float f2, float f3, float speed){
 
  
 rect(x,y,sz1,sz2); 
  fill(f1,f2,f3);
  frameRate(speed);
 
  
}