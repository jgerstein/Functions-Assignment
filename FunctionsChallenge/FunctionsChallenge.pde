float radius;
PImage electricity, antiElectricity;

void setup() {
  size(1400, 800);
  smooth();

  textAlign(CENTER);
  ellipseMode(CENTER);
  imageMode(CENTER);
  colorMode(HSB);
  noFill();

  electricity = loadImage("lightning-optical.jpg");
  antiElectricity = loadImage("anti-lightning-optical.jpg");
}

void draw() {
  radius = distance();
  background(0);

  tint(255, 100 - map(radius, 0, mouseX, 0, 100));
  image(electricity, width/2, height/2);

  println(electricForce());
  text("Electrostatic Force", width/2, height/2);
  text(electricForce(), width/2, height/2 + 20);

  forceStress();
}

float distance() {
  float inputX = abs(mouseX - width/2) * 2;
  float inputY = abs(mouseY - height/2) * 2;
  float result = sqrt(sq(inputX) + sq(inputY));
  return result;
}

float electricForce() {
  float k = 9 * pow(10, 9);
  float q1 = 1;
  float q2 = 1;
  float r = radius;
  float result = k * abs(q1) * abs(q2) / sq(r);
  return result;
}

void forceStress() {
  stroke(antiElectricity.get(mouseX, mouseY));
  ellipse(mouseX, mouseY, 20, 20);
  ellipse(width - mouseX, height - mouseY, 20, 20);
}