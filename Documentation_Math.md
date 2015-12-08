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
```

## Description:
Draws a random triangle

## Syntax:
drawATriangle()


##Parameters: 
none

##Returns:
String (will write a value in text)

##Other notes:
None
