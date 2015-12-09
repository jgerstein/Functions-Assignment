PFont fon;
float planet = 100;
float star = 1000;
float distance = 25;
void setup()
{
  fon = createFont("Trebuchet MS", 24);
  size(800, 600);
}
void draw()
{
  background(200);
  textFont(fon);
  fill(0);
  textAlign(LEFT);
  text("Planet's Mass: "+planet, 25, 25);
  text("Star's Mass: "+star, 25, 50);
  text("Average Distance: "+distance, 25, 75);
  text("Orbital Period: "+orbitalPeriod(planet, star, distance), 25, 100);
  bullseye(100, 500, 100, 5);
  bullseye(300, 450, 200, 5);
  bullseye(600, 450, 200, 13);
}
float geometricSeries(float a, float r, int n)//first term, common ratio, number of terms
{
  return 0;
}
float geometricSeries(float a, float r)//first term, common ratio(calculates to infinity)
{
  return 0;
}
float orbitalPeriod(float m1, float m2, float a)//first mass, second mass, average distance between them
{
  float numerator = 4*sq(PI)*pow(a,3);
  float denominator = 6.67*pow(10,-11)*(m1+m2);
  float answer = sqrt(numerator/denominator);
  return 0;
}
void bullseye(float x, float y, float d, int n)//x coordinate, y coordinate, diameter, number of rings
{
  boolean red = true;//stores whether or not the next circle is red
  for(int i = n; i > 0; i--)//for each ring from the outside in
  {
    if(red)//fill the circle red
    {
      fill(255, 0, 0);
    }
    else//or fill the circle white
    {
      fill(255);
    }
    ellipse(x, y, i*(d/n), i*(d/n));//draw the ring
    red = !red;//alternate between red and white
  }
}