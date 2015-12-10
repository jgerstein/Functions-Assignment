void setup(){
  size(800,600);
  background(0);
  noStroke();
}


void draw(){
 println( work(3,5));
println( circle(400,300,5,78,91));
likeASir();
}

float work(float k, float x){
  float answer;
  answer=.5*k*sq(x);
  return answer;
}

float circle(float h, float k, float r, float x, float y){
  r=sqrt(sq(x-h)+sq(y-k));
  ellipse(h,k,r*2,r*2);
 if (mousePressed){
   fill(random(255),random(255),random(255));
}
return r;
}
  
  void likeASir(){
    PImage las = loadImage("like_a_sir.png");
    image(las,400,300,733,800);
    imageMode(CENTER);
  }