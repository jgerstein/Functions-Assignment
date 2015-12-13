void setup() {
  background(0); //sets background color
}
void draw () {
  ConvertFarenheitToKelvin (0); //calls function
}

int ConvertFarenheitToKelvin (int Fdeg) { // sets function and Fdeg
  Fdeg += 459.7; // defines Fdeg
  Fdeg = Fdeg * 5/9; //defines fdeg
  println(Fdeg); //prints Fdeg in command line
  return Fdeg; //returns Fdeg
}