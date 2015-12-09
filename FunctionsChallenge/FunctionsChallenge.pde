PFont fon;
void setup()
{
  fon = createFont("Trebuchet MS", 24);
  size(800, 600);
}
void draw()
{
  background(255);
  textFont(fon);
  fill(0);
  textAlign(LEFT);
  text("Hello World!", 50, 50);
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
  return 0;
}
void command(float x, float y, float d, float n)//x coordinate, y coordinate, diameter, number of rings
{
}