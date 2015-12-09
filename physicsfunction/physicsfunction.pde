void setup(){
  size(600,600); //set size of canvas
}

void draw(){
  background(0);
  textAlign(CENTER); //aligh the text to center
  textSize(30);
  text("work (change in kinematic energy)=", width/2,200); //display text defining work
  textSize(150);
  text(work(.26, 13, 0),width/2,350); //display the answer to the funtion
  textSize(15);
  text("**remember if an object is dropped, vi=0**", width/2, 575); //display a little physics reminder
  
}

float work(float m, float vf, float vi){ //define funtion work(parameters=mass, final velocity, and initial velocity)
  return .5*m*sq(vf)-.5*m*sq(vi); //formula: .5*mass*(vf^2)-.5*mass*(vi^2)
}