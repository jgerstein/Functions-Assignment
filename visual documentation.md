Name: 
baymaxFace

Examples:

void baymaxFace(float r, float g, float b) {
  fill(r,g,b);
  noStroke();
  ellipse(x1, height/2, d,d);
  ellipse(x2, height/2, d, d);
  rect(x1,height/2, x1+400, 10);
}

Description:
makes baymax's face flash random colors

Syntax:
baymaxFace(random(r),random(g),random(b));

Parameters: 
r - int or float, red value of fill
g - int or float, green value of fill
b - int or float, blue value of fill

Returns:
none

Other notes:
keep the values of r,g,b under 150 so the colors are dark