# Name: findTheta

## Examples:
for r = (2i - 2j), f = (1i + 3j) (written in vector components), solve for the angle between the force and the displacement accomplished by work.

## Description:
Find angle between force and displacement caused by work. 

## Syntax:
float rx = 2; //plug in values for x and y values of the displacement and force
float ry = -2;
float fx = 1;
float fy = 3;

void setup(){
}

void draw(){
  println(findWorkAngle(rx,ry, fx, fy)); //print theta in degrees 
}


float findWorkAngle(float rx,float ry,float fx,float fy){ 
  float scalarx; 
  float scalary;
  float scalar;
  float dist;
  float force;
  float forcexdist;
  float theta;
  float thetadegrees; 

  scalarx = abs(rx*fx); //find absolute value of x components of displacement and force 
  scalary = abs(ry*fy);
  scalar = scalarx + scalary; //add scalar values

  dist = sqrt(pow(rx,2)+pow(ry,2)); //find value of displacement 
  force = sqrt(pow(fx,2)+pow(fy,2));
  forcexdist = dist*force;

  theta = acos(scalar/forcexdist);
  thetadegrees = theta*(180/PI); //convert theta in radians to degrees 
  return(thetadegrees);
}

##Parameters: 
x and y components of force and displacement. findWorkAngle(x component of displacement,y component of displacement, x component of force, y component of force)

##Returns:
The float value of theta. 

##Other notes:
None really. 
