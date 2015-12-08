# Name: 
drawATriangle ();

## Examples:
```
if (trigger == false) {
    String answer = drawATriangle();
    textSize(20);
    fill(random(255), random(255), random(255));
    text(answer, 50, 35);
  }
  timer+=1;
  if (timer >= 100) {
    timer = 0;
    trigger = false;
    background(0);
  }
}

String drawATriangle() {
  loc = new PVector (50,50);
  var = new PVector (random(550), random(400));
  fill(random(255), random(255), random(255));
  triangle(loc.x, loc.y, loc.x, loc.y+var.y, loc.x+var.x, loc.y+var.y);
  trigger = true;
  return calculateHyp(var);
}

String calculateHyp(PVector var) {
  float hyp = sqrt(sq(var.x) + sq(var.y));
  String s = "The length of the hypotenuse is " + hyp;
  return s;
}
```

## Description:
Draws a random triangle

## Syntax:
drawATriangle();


##Parameters: 
none

##Returns:
String

##Other notes:
None
