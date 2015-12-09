
void draw(){
  BlurAImage(2);
}

void BlurAImage(float x){
  PImage vacation;
  vacation = loadImage("vacation spot.jpg");
  image(vacation,0,0,width,height);
  filter(BLUR,x);
}

  