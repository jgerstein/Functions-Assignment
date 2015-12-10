#Name:
geometricSeries()

##Examples:
float q = geometricSeries(10, 2, 3);//q now holds 70.0
float r = geometricSeries(0.9, 0.1);//r now holds 1.0

##Description:
Calculates the sum of a geometric series and returns that value. Defines a series by its first term and its common ratio. Can be calculated for a defined number of terms or to infinity.

##Syntax:
geometricSeries(a, r, n)
geometricSeries(a, r)

##Parameters: 
a	float: first term of the series
r	float: common ratio between each term in the series
n	int: number of terms of the series to sum

##Returns:
float

##Other notes:
Gives an error when r is 1. Returns incorrect values when r is not greater than or equal to 0 and less than 1.