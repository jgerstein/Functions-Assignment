# Name: 
twinklingstar
## Examples:
PImage shineBright;

void setup(){
	size(100,100);
	}
void draw(){
	twinklingstar(40,50);
}
void twinklingstar(int a, int b){
	float sz= random(a,b);
	image (shineBright, random(width),random(height), sz,sz);
}
## Description:
Makes yellow stars appear at random with a random width between desired parameters

## Syntax:
twinklingstar(a,b);

##Parameters: 
a int : width/height of star
b int : width/height of star

##Returns:
Nothing

##Other notes:
Nothing