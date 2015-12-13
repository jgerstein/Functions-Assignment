void setup () {
}

void draw () {
  FinalVelocityOfObject (0, 2, 2); //calls function
  //plug in inital velocity, acceleration, and time//
}

int FinalVelocityOfObject (int Vof0, int Acceleration, int Time) {// defines function
  int finalvelocity; // sets finalvelocity as an int
  finalvelocity = Vof0 + (Acceleration*Time); //defines finalvelocity  
  println(finalvelocity); //prints the value in the command line
  return finalvelocity; //returns value
}