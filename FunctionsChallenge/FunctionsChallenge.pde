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
  text("Planet's Mass: "+planet+" kg", 25, 25);
  text("Star's Mass: "+star+" kg", 25, 50);
  text("Average Distance: "+distance+" m", 25, 75);
  text("Orbital Period: "+orbitalPeriod(planet, star, distance)+" s", 25, 100);
  text("Geometric Sequence: 10*(0.5)^n", 25, 150);
  text("Sum of First 10 Terms: "+geometricSeries(10, 0.5, 10), 25, 175);
  text("Sum of Infinite Series: "+geometricSeries(10, 0.5), 25, 200);
  bullseye(100, 500, 100, 5);
  bullseye(300, 450, 200, 5);
  bullseye(600, 450, 200, 13);
}
float geometricSeries(float a, float r, int n)//first term, common ratio, number of terms
{
  float numerator = 1-pow(r,n);
  float denominator = 1-r;
  float answer = a*(numerator/denominator);
  return answer;
}
float geometricSeries(float a, float r)//first term, common ratio(calculates to infinity)
{
  float answer = a/(1-r);
  return answer;
}
float orbitalPeriod(float m1, float m2, float a)//first mass, second mass, average distance between them
{
  float numerator = 4*sq(PI)*pow(a,3);
  float denominator = 6.67*pow(10,-11)*(m1+m2);
  float answer = sqrt(numerator/denominator);
  return answer;
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