void setup(){
size (800,600);
background (0);
}

void draw(){
DrawATree(300);
}

void DrawATree(float heightt){
  fill(153,51,0);
rect(height-250,width/3, 75,heightt);
fill(51, 204, 51);
ellipse(height/1.5,width/3,400,80);
ellipse(height/1.5,width/2.5,400,80);
ellipse(height/1.5,width/3.5,400,80);

}