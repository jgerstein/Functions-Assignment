# Name: 
orbitalPeriod()

## Examples:
float time = orbitalPeriod(20000, 80, 2800);//time holds a value close to 804160000.0

## Description:
Returns the orbital period of a two-body gravitational system given both masses and the average distance between them. Uses the equation from Kepler's Third Law. This takes the masses in kilograms and the distance in meters. It returns the period in seconds.

## Syntax:
orbitalPeriod(m1, m2, a)

##Parameters: 
m1	float: mass of the first object
m2	float: mass of the second object
a	float: average distance between the two objects during orbit

##Returns:
float

##Other notes:
None