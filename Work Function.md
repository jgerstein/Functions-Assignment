# Name: work()

## Examples:
PVector pos = new PVector(width/2,height/2);
PVector vel = new PVector(10,12);
float work = 0;
float kinFriction_coefficient;
float mass = 0;
float g = 9.8;
pos.add(vel);
w += work(mass,kinFriction_coefficient,g,pos.x,pos.y,vel.x,vel.y);
println("Work: " + w + " J");
//display work as function of displacement and force

## Description:
Returns the work done by kinetic friction within each frame given the mass, kinetic friction coefficient, normal acceleration, position, and velocity.

## Syntax:
work(m,cKF,acc,x,y,vx,vy)

##Parameters: 
m       float: mass of the object
cKF     float: coefficient of kinetic friction
acc     float: acceleration of the normal force
x       float: x position of the object
y       float: y position of the object
vx      float: velocity of the object in the x direction
vy      float: velocity of the object in the y direction

##Returns:
float

##Other notes:
Particular to friction because it opposes the motion
