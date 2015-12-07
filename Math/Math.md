# Name: 
Math - Trigonometric Function Solver

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
The function takes a value and displays the six basic trigonometric functions calculated using the value.

## Syntax:
```processing
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
  An array is used to store the results of each trig function. Below is a breakdown of which array corresponds to which trig function.
    result[0] = sin(value);
    result[1] = cos(value);
    result[2] = tan(value);
    result[3] = acos(value);
    result[4] = asin(value);
    result[5] = atan(value);
