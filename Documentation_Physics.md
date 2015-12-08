# Name: 
drawSomeBalls();
## Examples:
```
void drawSomeBalls() {
  for (int i=0; i < count; i++) { 
    noStroke();
    fill(x[i], y[i], 900, 80);
    colorMode(HSB, 900);
    ellipse(x[i], y[i], diam[i], diam[i]);

    //add velocity to position

    velY[i] += gravity[i];
    velY[i] *= 0.99;

    x[i] += velX[i];
    y[i] += velY[i];

    //bounce ball if it hits walls
    if (x[i] + diam[i]/2 >= width) {
      velX[i] = -abs(velX[i]);    //if the ball hits the right wall, assign x velocity the negative version of itself
    } else if (x[i] - diam[i]/2 <= 0) {
      velX[i] = abs(velX[i]);     //if the ball hits the left wall, assign x velocity the positive version of itself
    }
    if (y[i] + diam[i]/2 >= height) {
      velY[i] = -abs(velY[i]);
      y[i] = height - diam[i]/2;
    } else if (y[i] - diam[i]/2 <= 0) {
      velY[i] = abs(velY[i]);
    }
    if (y[i] == height - diam[i]/2) {
      velY[i] = -abs(velY[i]);
    }
    if (dist(x[i], y[i], mouseX, mouseY) <= diam[i]/2) {
      drawADuck ();
    }
  }
}
```

## Description:
Draws some balls according to gravity

## Syntax:
drawSomeBalls()

##Parameters: 
None

##Returns:
void -- just draws some balls

##Other notes:
Anything else?
