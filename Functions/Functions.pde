PVector p1 = new PVector(-100, -100);
PVector p2 = new PVector(-100, -100);
PVector pos = new PVector(0, 0);
PVector vel = new PVector(0, 0);
PVector acc = new PVector(0, 0);
boolean surface = false;
boolean onRamp = true;
float m = 10;
float diam = 20;
float g = 9.8;
float scale = 0.01;
float theta = 0;
float coRest = 0.9;
float coKFric = 0.05;
float str = 255;

void setup() {
  size(500, 500);
  stroke(255);
  fill(255);
  textAlign(CENTER);
}

float y(float x1, float y1, float x2, float y2, float xPos) {
  return y1+(y2-y1)/(x2-x1)*(xPos-x1);
}

float angle(float x1, float y1, float x2, float y2) {
  return atan((y2-y1)/(x2-x1));
}

void mouseClicked() {
  if (surface == false) {
    if (p1.x == -100) {
      p1.set(mouseX, mouseY);
    } else {
      if (mouseX != p1.x) {
        p2.set(mouseX, mouseY);
        pos.set(width/2, y(p1.x, p1.y, p2.x, p2.y, width/2));
        surface = true;
      }
    }
  }
}

void keyPressed() {
  if (key == BACKSPACE) {
    surface = false;
    onRamp = true;
    str = 255;
    p1.set(-100, -100);
    p2.set(-100, -100);
    vel.set(0,0);
  }
}

void draw() {
  background(0);
  if (surface == false) {
    textSize(20);
    text("Set Surface", width/2, height/2);
    stroke(255);
    if (p1.x != -100 && p2.x == -100) {
      line(0, p1.y, width, p1.y);
    }
  } else {
    textSize(10);
    text("Press BACKSPACE to redraw surface", width-100, 10);
    if (onRamp == true) {
      stroke(255);
    } else {
      stroke(str);
      str -= 3;
    }
    line(0, y(p1.x, p1.y, p2.x, p2.y, 0), width, y(p1.x, p1.y, p2.x, p2.y, width));
    stroke(255);
    ellipse(pos.x+diam*sin(angle(p1.x,p1.y,p2.x,p2.y))/2, pos.y-diam*cos(angle(p1.x,p1.y,p2.x,p2.y))/2, diam, diam);
    if (onRamp == true) {
      if (pos.x+diam*sin(angle(p1.x,p1.y,p2.x,p2.y))/2+diam/2 >= width || pos.x+diam*sin(angle(p1.x,p1.y,p2.x,p2.y))/2-diam/2 <= 0 && onRamp == true) {
        pos.sub(vel);
        vel.mult(-coRest);
      }
      acc.set(g*scale*sin(angle(p1.x,p1.y,p2.x,p2.y))*cos(angle(p1.x,p1.y,p2.x,p2.y)),g*scale*sq(sin(angle(p1.x,p1.y,p2.x,p2.y))));
      if (pos.y-diam*cos(angle(p1.x,p1.y,p2.x,p2.y))/2+diam/2 >= height) {
        pos.sub(vel);
        vel.y *= -coRest;
        onRamp = false;
        acc.set(-coKFric*g*scale*vel.x/abs(vel.x),g*scale);
      }
    } else {
      if (pos.x+diam*sin(angle(p1.x,p1.y,p2.x,p2.y))/2+diam/2 >= width || pos.x+diam*sin(angle(p1.x,p1.y,p2.x,p2.y))/2-diam/2 <= 0) {
        pos.sub(vel);
        vel.x *= -coRest;
      }
      if (pos.y-diam*cos(angle(p1.x,p1.y,p2.x,p2.y))/2+diam/2 >= height) {
        pos.sub(vel);
        vel.y *= -coRest;
        acc.set(-coKFric*g*scale*vel.x/abs(vel.x),g*scale);
      } else {
        acc.set(0,g*scale);
      }
    }
    vel.add(acc);
    pos.add(vel);
  }
}