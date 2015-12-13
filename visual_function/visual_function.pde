void setup(){
size (800,600); //sets size of screen
background (0); // sets background color
}

void draw(){
DrawATree(300); // calls function, also defines leaveswidth
}

void DrawATree(float leaveswidth){ //floats leaveswidth
  fill(153,51,0); // sets fill
rect(height-250,width/3, 75,350); //draws rectangle 
fill(51, 204, 51); // sets fill color 
ellipse(height/1.5,width/3,leaveswidth,80); //draws ellipse
ellipse(height/1.5,width/2.5,leaveswidth,80);//draws ellipse
ellipse(height/1.5,width/3.5,leaveswidth,80);//draws ellipse

}