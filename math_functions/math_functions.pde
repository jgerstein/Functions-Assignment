void setup() {
  background(0);
}
void draw () {
  ConvertFarenheitToKelvin (0); 
  {
  }
}

float ConvertFarenheitToKelvin (float Fdeg) {
  Fdeg += 459.7;
  Fdeg = Fdeg * 5/9;
  println(Fdeg);
  return Fdeg;
}