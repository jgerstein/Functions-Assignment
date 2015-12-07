# Name: 
Jonathan Shih

## Examples:
For a value of PI/2, the program will display: 
Value: 1.5707964
Sine: 1.0
Cosine: -4.371139E-8
Tangent: -2.2877332E7
Arc Sine: NaN
Arc Cosine: NaN
Arc Tangent: 1.0038848



## Description:
Insert description here

## Syntax:
```
  float value = PI/2; //set value of trig function to calculate in radians
  
  
  void setup(){
    textAlign(CENTER, BOTTOM);
    size(800,600);
  
  }
  
  void draw(){
    //set background to black
    background(0);
  
    //store result of trig function
    float[] result = trig(value);
    
    //Display trig functions
    text("Value: " + value, width/2, 50);
    text("Sine: " + result[0], width/2, 100);
    text("Cosine: " + result[1], width/2, 150);
    text("Tangent: " + result[2], width/2, 200);
    text("Arc Sine: " + result[3], width/2, 250);
    text("Arc Cosine: " + result[4], width/2, 300);
    text("Arc Tangent: " + result[5], width/2, 350);  
    
  }
  
  float[] trig(float value){
    float[] result = new float[6];
    result[0] = sin(value);
    result[1] = cos(value);
    result[2] = tan(value);
    result[3] = acos(value);
    result[4] = asin(value);
    result[5] = atan(value);
    return result;
}
```

##Parameters: 
The parameter of the function is the float "value". This float is the value for which the six trigonometric functions are calculated for.
Value can easily be changed by adjusting the initial declaration of the variable. It can be declared as multiples of PI, as a fraction or as a decimal.
The value must be in radians.

##Returns:
Returns all six basic trigonometric functions as a value stored in the array "result".
The array allows multiple values to be returned and stored so the draw function can print more than one value using one function.

##Other notes:
Anything else?
