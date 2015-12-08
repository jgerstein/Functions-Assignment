void setup () {

}

void draw () {
FinalVelocityOfObject ();
}

float FinalVelocityOfObject (float Vof0,float Acceleration, float Time) {
 float finalvelocity;
  finalvelocity = Vof0 + (Acceleration*Time);
  println(finalvelocity);
  return finalvelocity;

}