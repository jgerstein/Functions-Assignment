# Name: 
calculateHyp

## Examples:
```
String drawATriangle() {
  loc = new PVector (50,50);
  var = new PVector (random(550), random(400));
  fill(random(255), random(255), random(255));
  triangle(loc.x, loc.y, loc.x, loc.y+var.y, loc.x+var.x, loc.y+var.y);
  trigger = true;
  return calculateHyp(var);
}
```

## Description:
calculates the hypotenuse of the triangle

## Syntax:
calculateHyp()

##Parameters: 
PVector var

##Returns:
String "s"

##Other notes:
None
