//declare variables
float radius;
PImage electricity, antiElectricity;

void setup() {
  //set canvas size and rendering setting
  size(1400, 800);
  smooth();

  //set alignments and colour settings
  textAlign(CENTER);
  ellipseMode(CENTER);
  imageMode(CENTER);
  colorMode(HSB);
  noFill();

  //pre-load images
  electricity = loadImage("lightning-optical.jpg");
  antiElectricity = loadImage("anti-lightning-optical.jpg");
}

void draw() {
  //retrieve radius quantity from function
  radius = distance();
  
  //set background colour
  background(0);

  //insert image and fading mechanism
  tint(255, 100 - map(radius, 0, mouseX, 0, 100));
  image(electricity, width/2, height/2);

  //display, aesthetics, HUD, whatever you'd like to call it
  println("The electric force is", electricForce(1, 1));
  text("Electrostatic Force", width/2, height/2);
  text(electricForce(1, 1), width/2, height/2 + 20);

  //summon the incorrectly named force of stress
  forceStress();
}

//create distance function to produce 'r' in the Fe=kq1q1/r^2 equation
float distance() {
  //find x and y values of 'r' with the center as the origin
  float inputX = abs(mouseX - width/2) * 2;
  float inputY = abs(mouseY - height/2) * 2;
  //use the distance formula to find 'r'
  float result = sqrt(sq(inputX) + sq(inputY));
  //retrieve the value of the distance function
  return result;
}

//create electricForce function based on the Fe=kq1q2/r^2 equation
float electricForce(float q1, float q2) {
  //initialize Coulomb's constant
  float k = 9 * pow(10, 9);
  //steal the external value from distance()
  float r = radius;
  //use the Fe equation to find electrostatic force
  float result = k * abs(q1) * abs(q2) / sq(r);
  //retrieve the value of the electricForce function
  return result;
}

//create forceStress function to produce charge ellipses
void forceStress() {
  //set ellipses to an easily discernable colour
  stroke(antiElectricity.get(mouseX, mouseY));
  //draw opposing charge ellipses
  ellipse(mouseX, mouseY, 20, 20);
  ellipse(width - mouseX, height - mouseY, 20, 20);
  
  //you can't see me
  println("You aren't supposed to be reading this...");
}
