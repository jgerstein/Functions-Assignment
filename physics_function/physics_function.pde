void setup () {
  size(800,800);    //make a canvas
}


void draw () {
  println(finalspeed(2,4,8));  //input displacement of 2m, initial velocity of 4m/s, and acceleration of 8m/s^2
}

float finalspeed (float x, float Vo, float a) {    //finding final speed given displacement, initial velocity, and acceleration
  float result = sqrt(pow(Vo,2) + 2*x*a);              //using formula Vf^2=Vo^2+2ax
  return result;
}