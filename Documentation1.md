# Name: workKin()

## Examples:
PVector pos = new PVector(width/2,height/2);
PVector vel = new PVector(10,12);
float work = 0;
float kinFriction_coefficient;
float mass = 0;
float g = 9.8;
float kinFriction_force = mass*g*kinFriction_coefficient;
pos.add(vel);
w += workKin(-kinetic_friction_force,pos.x,pos.y,pos.x-vel.x,pos.y-vel.y);
println("Work: " + w + " J");
//display work as function of displacement and force

## Description:
Insert description here

## Syntax:
Demonstrate syntax here

##Parameters: 
Name and describe parameters here

##Returns:
What type of data does it return?

##Other notes:
Anything else?
