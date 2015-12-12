# Ankita Kodali

## Examples:
If there were 5 children running in a race, determine how many ways these children could win first, second, and third place. Using the permutation formula will give the answer quicker than trying to list every possibility.

## Description:
To find the number of ways that certain amount of data can be ordered in a certain amount of places, this function uses the permutation formula. The permutation formla is the factorial of the amount of data divided by the factorial of the data minus the number of places.

## Syntax:
float findPermutation(float data, float places) {   
  float places=data-places;       //change the value of places to use it in the denominator
  //set i equal to the denominator value minus one so that every time it goes through the for loop it multiplies by 1 less which simulates the factorial function
  for (float i=places-1; i>=1; i--) {    
    places=places*i;
  }
   //use the factorial method again for the numerator
  for (float i=data-1; i>=1; i--) {
    data=data*i;
  }
  float result= data/places;  //divide the two factorials found
  return result;    //return the result
}

##Parameters: 
The data parameter tells how many objects can be used to fill the requirement. In the example, this would be the 5 children.
The places parameter tells how many spaces can be filled by the objects. In the example, this would be the 3 places or 1st, 2nd, and 3rd place.
If you are using this function to return a random value you can put something like random(0,1) for the parameters in the loop so that you get a random value.

##Returns:
This function returns the number of ways the data can be put in the places.
If you are using it to get a random number you will get a random value in return.

##Other notes:
In my code, I used this functions to return a random value each time it went through the loop.
