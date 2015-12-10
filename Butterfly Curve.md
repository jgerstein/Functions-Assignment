# Name: pc1()

## Examples:
stroke(1);
strokeWeight(1);
for(int i = 0; i < 1000; i++) {
  line(width/2+pc1(i).x/ux,height/2+pc1(i).y/uy,width/2+pc1(i+1).x/ux,height/2+pc1(i+1).y/uy);
}

## Description:
Defines the position vector <x(t), y(t)> given t for a butterfly curve

## Syntax:
pc1(t)

##Parameters: 
t       float: free functional parameter for equation to define x and y

##Returns:
PVector

##Other notes:
Can be broken down into compenents as pc1(t).x or pc1(t).y
